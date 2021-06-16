class RemoveCreatorIdFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :creator_id, :string
  end
end
