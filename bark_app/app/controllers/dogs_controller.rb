class DogsController < ApplicationController
	before_action :set_dog, only: [:show, :edit, :update, :destroy]

	def index
		@dogs = Dog.all
	end

	def show 
		@dog = Dog.find(params[:id])
end

def new
	@dog = Dog.new
end

def edit
	@dog = Dog.find(params[:id])
end

def create
	@dog = Dog.new(dog_params)
	if @dog.save
		@redirect_to @dog, notice: "New dog was created"

	else
		render :new
	end



def update
	@dog = Dog.find(params[:id])
	@dog.update(dog_params)
	render :edit
end

def detroy
		@dog = Dog.find(params[:id])
		@dog.destroy
		redirect_to dogs_path
end


private

def dog_params
	params.require(:dog).permit(:name, :email, :password, :password_confirmation, :birthday, :city, :state, :newsletter)
end

def set_dog
	@dog = Dog.find(params[:id])
end


