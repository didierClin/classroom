# == Schema Information
#
# Table name: students
#
#  id        :integer          not null, primary key
#  name      :string
#  course_id :integer
#  avatar    :string
#

class Student < ApplicationRecord
  validates :name, :presence => true

  belongs_to :course
end
