class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|

      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :license

      t.timestamps
    end
  end
end
