class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :stdid
      t.string :stdname
      t.integer :dvid
      t.string :dvname
      t.datetime :date
      t.datetime :todate

      t.timestamps
    end
  end
end
