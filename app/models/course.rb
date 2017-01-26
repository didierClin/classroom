# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  field      :string
#  teacher    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ApplicationRecord
    validates :field, presence: true
    has_many :students
end
