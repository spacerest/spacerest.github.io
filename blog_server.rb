require 'sinatra'
require 'rubygems'
require 'sinatra/base'
require_relative './public/app/bank'

set :public_dir, Proc.new {File.join(root, 'public')}

class BlogServer < Sinatra::Base


  pages = ['about','contact', 'secret', 'questions']
 
  get '/' do
    File.read('public/index.html')
  end
  
  post '/' do
    File.read('public/index.html')
  end


  pages.each { |page|  
    post "/#{page}/" do
      File.read("public/#{page}.html")
    end

    get  "/#{page}/" do
      File.read("public/#{page}/index.html")
    end
  }

  get '/bank_app' do
    @bank = Bank.new
    "bank is #{@bank}"
    erb :signup
  end

  post '/bank_app' do
    @bank = Bank.new
    "bank is #{@bank}"
    erb :signup
  end
 
  post '/signup_confirm' do
    @error_message = ''
    if params['first_name'] && params['last_name']
    @first_name = params['first_name']
    @last_name = params['last_name']
    if /\w/.match(@first_name).nil? || /\w/.match(@last_name).nil?
      @error_message = 'looks like you forgot your first or last name'

      erb :signup
    elsif Session[:members].index("#{@first_name}_#{@last_name}")
      @error_message = "looks like you've already signed up." 

      erb :signup
    else
      @bank.new_member([@first_name, @last_name])
      @member = @bank.get_member(Session[:members].length)
      Session[:members] << @member.access_name
      Session[:member_id] = Session[:members].index(@member.access_name)
      Session[@member.access_name] = []
      @status_message = "welcome #{@member.access_name}!"
      erb :accounts
    end
    
  elsif params[:change_member]
    @member_access = params[:change_member]
    Session[:member_id] = Session[:members].index(@member_access)

    erb :signup_confirm
  end
end

get '/accounts' do
  if Session[:members].length == 0
    erb :members
  else
    erb :accounts
  end
end

post '/update_account' do
  Session[:account_id] = params[:which_account].split("")[4..7].join.to_i
  @action = params[:which_action]

  erb @action.to_sym   

end

post '/new_account' do
  @member = @bank.get_member(Session[:member_id])
  @member.new_account
  Session[:account_id] = Session[@member.access_name].length
  @account = @bank.get_member(Session[:member_id]).get_account(Session[:account_id])
  Session[@bank.get_member(Session[:member_id]).access_name] << @account
  @status_message = 'you have set up a new account. your balance is $0.00.'

  erb :accounts
end

post '/withdraw' do
  @member = @bank.get_member(Session[:member_id])
  @account = @member.get_account(Session[:account_id])
  @account.withdraw(params['withdraw_amount'].to_i)
  @status_message = "you withdrew #{dollarFormat(params['withdraw_amount'])} and your new balance is #{dollarFormat(@account.balance)}."

  erb :accounts
end

post '/deposit' do
  @member = @bank.get_member(Session[:member_id])
  @account = @member.get_account(Session[:account_id])
  @account.deposit(params['deposit_amount'].to_i)
  @status_message = "you deposited #{dollarFormat(params['deposit_amount'])} and your new balance is #{dollarFormat(@account.balance)}."

  erb :accounts
end

get '/members' do
  erb :members
end

Options = {
  'home' => '/',
  'new member' => '/signup',
  'change member' => '/members',
  'manage accounts' => '/accounts'
}

Session = Hash.new
Session[:members] = []
Session[:member_id] = 0
Session[:account_id] = 0 


end

