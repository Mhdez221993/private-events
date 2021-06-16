class AddVisitorIdAndAttendeIdToAttendedEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :attended_events, :visitor_id, :integer
    add_index :attended_events, :visitor_id
    add_column :attended_events, :attended_id, :integer
    add_index :attended_events, :attended_id
  end
end
