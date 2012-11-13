class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birth_date
      t.string :sex
      t.string :dni
      t.string :cip
      t.string :image
      t.string :room
      t.integer :admission
      t.integer :exit
      t.integer :exitus
      t.integer :registered
      t.string :code
      t.string :cap
      t.string :cap_doctor
      t.string :insurance_comp

      t.timestamps
    end
  end
end
