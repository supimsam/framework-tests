require 'dinosaur'

describe Dinosaur do 

	context "makes noise" do
		it "#poke" do
			@dino = Dinosaur.new(makes_noise: true)
			expect(@dino.poke).to eq("ROAAARR")
		end
	end

	context "doesn't make noise" do

		it "#poke" do
			@dino = Dinosaur.new(makes_noise: false)
			expect(@dino.poke).to eq(nil)
		end
	end

end
