class CreateDevioces < ActiveRecord::Migration
  def change
    create_table :devioces do |t|
      t.string :code
      t.string :name
      t.integer :remain

      t.timestamps
    end
  end
end
