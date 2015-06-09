describe Array do

	before do
		@array = Array.new
	end

	
	it "#new should return a blank instance" do
		expect(Array.new).to eq([])
	
	end

	it "should allow you to #count the items in it" do
		expect(Array.new.count).to eq(0)
	end

	after do
		puts "finished the test." 
	end



end