class CreateFalls < ActiveRecord::Migration
  def change
    create_table :falls do |t|
      t.date :fall_date
      t.string :fall

      t.timestamps
    end
  end
end
