require_relative 'member'
require_relative 'account'
require_relative 'transaction'
require 'yaml'


class Bank

  attr_accessor :member_list
  attr_reader :member_list

  def initialize
    @member_id  
    @data_file = load_yaml_file
    @data = YAML.load_file(@data_file) || {}
    @member_list = @data['members'] || []
    @data['members'] = @member_list
  end

  def load_yaml_file
    file = "member_info.yaml"
    unless File.exists?(file)
      File.new(file, "w+") ##read-write-mode
    end
    file
  end

  def new_member(name_ary)  
    if !self.members.index("#{name_ary[0]}_#{name_ary[1]}")
      @member_id = @data['members'].length || 0
      @member_list[@member_id] = Member.new(name_ary)
      @member_list[@member_id].assign_member_id(@member_id)
    end
     
    #@data['members'] << "#{name_ary[1]}#{@member_list[@member_id]}#{name_ary[0]}"
    File.open(@data_file, "r+") do |f|
      YAML.dump(@data, f)
    end
  end
    
  def members
    @new_array = []
    i = 0
    @member_list.length.times do
      @new_array[i] = @member_list[i].access_name
      i += 1
    end
    return @new_array
  end

  def get_member(member_id)
    @member_list[member_id]
  end
  
  def transaction_history
    transaction_history = []
    @member_list.each { |j|
      transaction_history << j.transaction_history
     }
    transaction_history.flatten
  end

end

