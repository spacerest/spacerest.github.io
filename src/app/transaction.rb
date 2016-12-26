class Transaction

  attr_reader :transaction_id, :change, :account_number, :balance, :time
  attr_accessor :transaction_id, :change, :account_number, :balance, :time, :description

  def initialize(balance, change, account_number, description)
    @description = description
    @account_number = account_number
    @balance = balance
    @change = change
    @time = Time.now.strftime("%Y-%m-%d %H:%M")
  end

end
