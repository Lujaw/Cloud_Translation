class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :from
      t.string :to
      t.text :translation_text
      t.text :translated_test
      t.text :additional_details
      t.float :reward
      t.references :requestor

      t.timestamps
    end
    add_index :works, :requestor_id
  end
end
