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

  def self.search(search)
    where("name LIKE ? ", "%#{search}%") 
    # where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
