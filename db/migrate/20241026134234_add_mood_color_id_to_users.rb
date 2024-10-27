class AddMoodColorIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :mood_color_id, :integer
  end
end
