class CreateColors < ActiveRecord::Migration[7.0]
  def change
    create_table :colors do |t|
      t.integer :mood_color_id, null: false
      t.references :user, foregin: true
    end
  end
end
