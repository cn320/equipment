class AddColuum < ActiveRecord::Migration
  def up
  	add_column :students,:recalldate,:string
  end

  def down
  end
end
