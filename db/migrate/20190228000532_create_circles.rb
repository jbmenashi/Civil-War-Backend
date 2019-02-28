class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.references :event, foreign_key: true
      t.references :day, foreign_key: true
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
