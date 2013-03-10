class CreateDevioces < ActiveRecord::Migration
  def change
    create_table :devioces do |t|
      t.integer :code
      t.string :name
      t.integer :remain

      t.timestamps
    end
  end
end
