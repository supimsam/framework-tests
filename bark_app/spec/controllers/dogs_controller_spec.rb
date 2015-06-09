require 'rails_helper'


RSpec.describe DogsController, type: :controller  do
	let(:valid_session) { { dog_id: 1 } }
	let(:valid_attributes) {
		@vailid_attributes ={
			name: "Fluffy",
			email: "fluffy@nycda.com",
			password: "woof",
			password_confermation: "woof",
			birthday: Time.now - 3.years,
			city: "New York",
			state: "NY",
			newsletter: true
		}
	}
	
	let(:invalid_attributes) {
		@invalid_attributes = {
			name: nil,
			password_confirmation: nil
		}
	}

		describe "GET #index" do
			it "assigns all dogs to @dogs" do
				dog = Dog.create! valid_attributes 
				get :index, {}, valid_session
				expect(assigns(:dogs)).eq([dog])
		
		end
	end

		describe "GET show" do
		
			it "assigns requested dog as @dog" do
				dog = Dog.create! valid_attributesget :show, {id: dog.to_param}, valid_session
				expect(assigns(:dog)).to eq(dog)
	
		end
	end

		describe "GET new" do
			it "assigns a new dog as @dog" do
				get :new, {}, valid_session
				expect(assigns(:dog)).to be_a_new(Dog)
		end

	end
		describe "GET edit" do
			it "assigns the requested dog as @dog" do
				dog - Dog.create! valid_attributes
				get :edit, {id: dog.to_param}, valid_session
				expect(assigns(:dog)).to eq(dog)
			end

	end
		describe "POST create" do
			
			context "with valid params" do
				it "creates a new dog" do
					expect {
						post :create, {dog: valid_attributes}, valid_session
					}.to change(Dog, :count).by(1)
				
				end
			end
		end

				it "assigns a newly created dog as @dog" do
					post :create, {dog:valid_attribute}, valid_session
					expect(assigns(:dog)).to be_a(Dog)
					expect(assigns(:dog)).to be_persisted
				
				end
				
				it "redirects to the created dog" do
					post :create, {dog: valid_attributes}, valid_session
					expect(response).to redirect_to(Dog.last)
				
				end
			
			
			context "with invalid params" do
				it "assigns a newly created unsaved dog as @dog" do
					post :create, {dog: invalid_attributes}, valid_session
					expect(assigns(:dog)).to be_a_new(Dog)
				end
			end

				it "re-renders the 'new' template" do
					post :create, {dog: invalid_attributes}, valid_session
					expect(response).to render_template :new

			end
		end
	end

describe "PUT update" do
	let(:new_attributes) {@new_attributes = { name: "fred" } }

	context "with valid params" do
	it "assigns the requested do as @dog" do
		dog = Dog.create! valid_attributes 
		put :update, {id: dog.to_param, dog: new_attributes}, 
		valid_sessionexpect(assigns(:dog)).to eq(dog)
	end

		it "updates the requested dog" do
			dog = Dog.create! valid_attributesput :update, {id: dog.to_param, dog: new_attributes},
			valid_session
			dog.reload
			expect(dog.name).to eq("Fred")
	end

		it "redirects to the dog" do
		end
	end


	context "with invalid params" do
		it "assigns the dog as @dog" do
	
	
	end
	it "re-renders the 'edit templates" do
		dog = Dog.create! valid_attributesput :update, {id: dog.to_param, dog: invalid_attribute},
		valid_sessionexpect(response).to render_template :edit
	end
end

end

describe "DELETE destroy" do
	it "destroys the rquested dog" do
		dog = Dog.create! valid_attributes
		expect {
			delete :destroy:, {id: dog.to_param}, valid_session
		}.to change(Dog, :count).by(-1)
	end
	
	it "redirects to dogs list" do
		dog = Dog.create! valid_attributes
		delete :destroy, {id: dog_to_param}, valid_sessionexpect(response).to redirect_to(dogs_path)
	end



