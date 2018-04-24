class Animal < ApplicationRecord
	belongs_to :zona
	belongs_to :cuidador, class_name: 'User'

	def self.search(term)
		if term
			where('nom LIKE ?', "%#{term}%")
		else
			all
		end
	end
end
