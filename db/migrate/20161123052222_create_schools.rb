class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :schoolname
      t.string :address
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :board

      t.timestamps
    end
  end
end
