class IndexVotesOnTopicId < ActiveRecord::Migration
  def up
  	add_index :votes, :topic_id
  end

  def down
  	remove_index :votes, :topic_id
  end
end
