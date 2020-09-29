class AddTimeLoggedToClockEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :clock_events, :time_logged, :datetime
  end
end
