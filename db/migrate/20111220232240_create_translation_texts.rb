class CreateTranslationTexts < ActiveRecord::Migration
  def change
    create_table :translation_texts do |t|
      t.string :from
      t.string :to
      t.text :data
      t.integer :reward

      t.timestamps
    end
  end
end
