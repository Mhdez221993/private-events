class CreateAttendedEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :attended_events, &:timestamps
  end
end
