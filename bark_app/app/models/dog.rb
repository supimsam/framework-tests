class Dog < ActiveRecord::Base
	validates_confirmation_of :password
	validates_presence_of :name, :email, :password, :password_confirmation
end
