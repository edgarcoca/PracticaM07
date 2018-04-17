class Animal < ApplicationRecord
  belongs_to :zona
  belongs_to :cuidador, class_name: 'User'
end
