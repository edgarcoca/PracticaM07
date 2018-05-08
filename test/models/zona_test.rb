require 'test_helper'

class ZonaTest < ActiveSupport::TestCase
 
 def setup
		@zona = Zona.new(nom: "Mono", clima: "Sas", temperatura: "10", humitat: "10")
	end

	test "Creacion estandar de zona" do
		assert @zona.valid?
	end

	test "Zona con temperatura mayor a 60" do
		@zona2 = Zona.new(nom: "Mono", clima: "Sas", temperatura: "70", humitat: "10")
		assert_not @zona2.valid?
	end

	test "Zona con temperatura menor a -20" do
		@zona3 = Zona.new(nom: "Mono", clima: "Sas", temperatura: "-30", humitat: "10")
		assert_not @zona3.valid?
	end

	test "Zona con humitat menor a 10" do
		@zona4 = Zona.new(nom: "Mono", clima: "Sas", temperatura: "20", humitat: "0")
		assert_not @zona4.valid?
	end

	test "Zona con humitat mayor a 100" do
		@zona5 = Zona.new(nom: "Mono", clima: "Sas", temperatura: "20", humitat: "101")
		assert_not @zona5.valid?
	end
end
