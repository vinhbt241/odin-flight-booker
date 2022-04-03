class ModifyFlightTable < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.remove :start
      t.date :flight_date
      t.time :flight_time
    end
  end
end
