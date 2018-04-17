class Zona < ApplicationRecord
	has_many :animals
	validates :temperatura, :inclusion => -20..60
	validates :humitat, :inclusion => 10..100
end
