class RemoveTimeOutFromClockEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :clock_events, :time_out, :datetime
  end
end
