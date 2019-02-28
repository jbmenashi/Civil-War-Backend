class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :slider_id
      t.string :log_string

      t.timestamps
    end
  end
end
