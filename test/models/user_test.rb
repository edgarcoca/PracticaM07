require 'test_helper'

class UserTest < ActiveSupport::TestCase
  	def setup
		@cuidador = User.new
		@cuidador.email = 'test@example.com'
		@cuidador.password = '123456'
		@cuidador.password_confirmation = '123456'
		@cuidador.save!
	end


	test "Creacion estandar de user" do
		assert @cuidador.valid?
	end 
end
