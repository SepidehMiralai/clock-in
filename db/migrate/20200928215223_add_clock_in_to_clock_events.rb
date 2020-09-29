class AddClockInToClockEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :clock_events, :clock_in, :boolean, default: false
  end
end
