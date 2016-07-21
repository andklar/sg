class Task < ApplicationRecord
	has_many :submissions
	has_many :users, through: :submissions
end
