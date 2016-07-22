class Task < ApplicationRecord
	has_many :submissions
	has_many :users, through: :submissions

	accepts_nested_attributes_for :submissions
end
