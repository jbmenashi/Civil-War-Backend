class CreatePinpoints < ActiveRecord::Migration[5.2]
  def change
    create_table :pinpoints do |t|
      t.references :subject, foreign_key: true
      t.references :day, foreign_key: true
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
