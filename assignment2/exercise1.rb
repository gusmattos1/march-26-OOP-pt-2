class Bankaccount

  @@interest_rate = 1.5

  @@accounts = []

  @@total_funds

  def initialize
    @balance = 0
  end

  def account_balance
    return @balance
  end

  def deposit(num)
    @balance += num
    @@total_funds += num
    return @balance
  end

  def withdraw(num)
    @balance -= num
    @@total_funds -= num
    return @balance
  end

end

def create
  account = Bankaccount.new
  @@account.push(account)
  return account
end

def total_funds
return @@total_funds
end

def total_accounts
return @@accounts.length
end

create
