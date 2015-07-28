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
	  	


car1 = Car.new(Toyota,80,5000)

car1.info
