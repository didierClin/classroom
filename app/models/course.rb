class Course < ApplicationRecord
    validates :field, presence: true
    has_many :students
end
