class AddVotesCountToThings < ActiveRecord::Migration
  def change
    add_column :things, :votes_count, :integer, default: 0
  end
end
