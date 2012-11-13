class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.string :vaccine
      t.date :vaccine_date
      t.text :vaccine_observation

      t.timestamps
    end
  end
end
