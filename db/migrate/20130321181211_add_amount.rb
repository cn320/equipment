class AddAmount < ActiveRecord::Migration
  def up
   add_column :students,:amount,:integer
  end

  def down
  end
end
