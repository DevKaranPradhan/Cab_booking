class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|

      t.date :date
      t.time :time
      t.string :location
      t.references :cab
      t.references :driver

      t.timestamps
    end
  end
end
