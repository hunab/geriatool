class CreateUlcers < ActiveRecord::Migration
  def change
    create_table :ulcers do |t|
      t.date :ulcer_start_date
      t.string :ulcer
      t.date :ulder_end_date

      t.timestamps
    end
  end
end
