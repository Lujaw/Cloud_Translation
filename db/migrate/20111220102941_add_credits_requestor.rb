class AddCreditsRequestor < ActiveRecord::Migration

  def change
      add_column :requestors, :credits, :integer
  end

  def up
  end

  def down
  end
end
