class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :director_name
      
      t.timestamps
    end
  end
end
