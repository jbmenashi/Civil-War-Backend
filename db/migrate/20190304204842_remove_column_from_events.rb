class RemoveColumnFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :shorthand
  end
end
