

class BankAccount
  @@interest_rate = 0.02
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

  def self.total_funds
      total = 0.0
      @@accounts.each do |x|
      total += x.balance
      end
      return total
  end

  def self.interest_time
    @@accounts.each do |x|
    x.balance += (x.balance*@@interest_rate)
    end
  end



  x = self.create
  x.initalize
  x.deposit(50)

  y = self.create
  y.initalize
  y.deposit(50)
  y.withdrawal(40)


  p self.interest_time


end
