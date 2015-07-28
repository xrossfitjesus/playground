#movvie ooP


class Car
	def intialize(brand,speed,price)
  attr_accessor :brand,:speed,:price
 	attr_reader :brand,:speed,:price
  	@brand = brand
		@speed = speed
		@price = price
	end

	def info
		"the current cars is #{brand}, and its priced at #{price}. It runs on 
				#{speed}."
	end
  
  def deduct
  @car -= 1000
  end

  def add
  @price += 500  	
  end
 
  def normalize_prize
  @price = @price
  end

  def new_engine
  @speed += 5000
  p "a new engine has been added to car #{brand}"
  end
end

car1 = Car.new(Toyota,80,5000)

car1.deduct
car1.info


