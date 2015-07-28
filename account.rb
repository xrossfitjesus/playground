#creating bank account testing from computer science book of O'reiley
   
  class Account
    def initialize(name,money)
      @name = name
      @money = money
    end
		
  def deposit(amount)
      @money += amount
    end

  def withdraw(amount)
      @money -= amount
    end

  def status
       puts " #{@name} your current balance is #{@money}"
    end

   def transfer(amount,target_account)
	@money -= amount
	target_account.deposit(amount)
   end
end


