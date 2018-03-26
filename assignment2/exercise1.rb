class Bankaccount

  @@interest_rate = 2

  @@accounts = []


  def initialize
    @balance = 0
  end

  def balance
    return @balance
  end

  def more_balance(newbalance)
  @balance = newbalance
  end

  def deposit(num)
    @balance += num
    return @balance
  end

  def withdraw(num)
    @balance -= num
    return @balance
  end

  def self.create
    account = Bankaccount.new
    @@accounts << account
    return account
  end

  def self.all_accounts
    return @@accounts
  end

  def self.bank_total_funds
    total_balance = 0
    @@accounts.each do |acount|
      total_balance += acount.balance
    end
  return total_balance

  end

  def self.number_of_accounts
  return @@accounts.length
  end

  def self.interest_time
    @@accounts.each do |account|
      account.more_balance(account.balance * @@interest_rate)
     end
  end
end



my_account = Bankaccount.create
your_account = Bankaccount.create
our_account = Bankaccount.create

my_account.deposit(999)
our_account.deposit(100)
your_account.deposit(10)

#
p Bankaccount.all_accounts
#
# p Bankaccount.bank_total_funds
#

# p my_account.account_balance
# p Bankaccount.number_of_accounts
# p my_account
# p Bankaccount.bank_total_funds
#
# p my_account
#
# Bankaccount.interest_time
#
# p my_account
#
p Bankaccount.bank_total_funds
