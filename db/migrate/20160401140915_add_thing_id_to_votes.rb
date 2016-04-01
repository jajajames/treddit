class AddThingIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :thing_id, :integer
  end
end
