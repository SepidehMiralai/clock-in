class CreateClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_events do |t|
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end
