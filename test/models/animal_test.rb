require 'test_helper'

class AnimalTest < ActiveSupport::TestCase

	def setup
		zona = Zona.new(nom: "Mono", clima: "Sas", temperatura: "10", humitat: "10")
		zona.save!
		cuidador = User.new
		cuidador.email = 'test@example.com'
		cuidador.password = '123456'
		cuidador.password_confirmation = '123456'
		cuidador.save!
		@animal = Animal.new(nom: "Mono", raza: "Sas", zona_id: zona.id, any_naixement: "2008", cuidador_id: cuidador.id)
	end


	test "Creacion estandar de animal" do
		assert @animal.valid?
	end 
end
