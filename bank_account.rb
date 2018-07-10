

class BankAccount
  @@interest_rate = 0.2
  @@accounts = []

attr_accessor :balance


  def self.create
    new_account=BankAccount.new
    @@accounts << new_account
    return new_account
  end

  def initalize
     @balance = 0
  end

  def deposit(amount)
    @balance +=amount
  end

  def withdrawal(amount)
    @balance -=amount
  end


x = self.create

x.initalize
x.deposit(50)
x.withdrawal(40)
p @@accounts














end
