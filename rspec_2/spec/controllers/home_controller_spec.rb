require 'rails_helper'

RSpec.describe HomeController, type: :controller do

	describe "GET 'index'" do
		"it returns http success" do
			#your actual test here

			get 'index'
			expect(response). to be_success
		end
	end
end
	
end