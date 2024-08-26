class AddRetireYearToEmployee < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :retire_year, :integer
  end
end
