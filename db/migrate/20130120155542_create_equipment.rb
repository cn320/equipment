class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :about
      t.string :type
      t.string :remain
      t.timestamps
    end
  end
end
