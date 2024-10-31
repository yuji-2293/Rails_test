class AddTimestampsToColors < ActiveRecord::Migration[7.0]
  def change
    add_timestamps :colors, null: true
  end
end
