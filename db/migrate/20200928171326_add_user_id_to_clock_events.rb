class AddUserIdToClockEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :clock_events, :user_id, :integer
  end
end
