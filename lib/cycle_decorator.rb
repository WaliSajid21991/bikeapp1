# the concret component we would like to decorate, a car in our example
class BasicCycle
	def initialize(cost, manufacturer, color)
		@cost = cost
		@manufacturer = manufacturer
		@color = color
		@description = "basic cycle"
	end
	
	# getter method
	def cost
		return @cost
	end
	
	def details
		return @description + ": #{@cost}; " + @manufacturer + "; " + @color
	end	
end

# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class CycleDecorator < BasicCycle
	def initialize(real_cycle)
		@real_cycle = real_cycle
		@extra_cost = 0
		@description = "no extra feature"
	end
	
	def cost
		return @extra_cost + @real_cycle.cost
	end
	
	def details
		return @description + " " + @real_cycle.details
	end
	
end


# a concrete decorator
class ReflectorjacketDecorator < CycleDecorator
	def initialize(real_cycle)
		super(real_cycle)
		@description = "Reflectorjacket"
		@extra_cost = 3
	end
	
	def details
		return @description + ": #{@extra_cost} + " + @real_cycle.details  
	end	
end

# another concrete decorator
class GlovesDecorator < CycleDecorator
	def initialize(real_cycle)
		super(real_cycle)
		@description = "Gloves"
		@extra_cost = 5
	end
	
	def details
		return @description + ": #{@extra_cost} + " + @real_cycle.details  
	end	
end

# another concrete decorator
class HelmetDecorator < CycleDecorator
	def initialize(real_cycle)
		super(real_cycle)
		@description = "helmet"
		@extra_cost = 5
	end
	
	def details
		return @description + ": #{@extra_cost} + " + @real_cycle.details  
	end	
end
