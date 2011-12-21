class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.float :reward
      t.integer :work_id

      t.timestamps
    end
  end
end
