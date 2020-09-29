class RemoveClockInFromClockEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :clock_events, :clock_in, :boolean
  end
end
