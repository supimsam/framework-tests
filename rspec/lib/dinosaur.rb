class Dinosaur

	attr_accessor :makes_noise

	def initialize(makes_noise)
		@makes_noise = makes_noise

	
	end

	def poke
		"ROAAARR" if @makes_noise
	
	end




end
