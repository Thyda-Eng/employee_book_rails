class AddDateOfBirthToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :dob, :date
  end
end
