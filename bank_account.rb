class BankAccount
  @@interest_rate = 0.2
  @@accounts = []
  def initalize
    @balance = 0
  end

  def self.create
    @@accounts << BankAccount.new
  end


  attr_accessor :balance



#   def balance
#     @balance
#   end
#
# def balance
#   @balance = balance
# end

  def deposit(amount)
    @balance = @balance + amount
  end

self.create

p @@accounts




end
