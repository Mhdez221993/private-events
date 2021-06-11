class RemoveCreatorIdFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :creator_id, :string
  end
end
