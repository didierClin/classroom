class AddStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students
  end
end
