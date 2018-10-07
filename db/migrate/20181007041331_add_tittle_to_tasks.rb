class AddTittleToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :Tittle, :string
  end
end
