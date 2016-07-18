class Task < ApplicationRecord
	belongs_to :user, through: :submission
end
