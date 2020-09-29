class RemoveTimeInFromClockEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :clock_events, :time_in, :datetime
  end
end
