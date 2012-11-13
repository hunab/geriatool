class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :treatment
      t.string :national_code
      t.string :introduction
      t.float :de
      t.float :co
      t.float :ce
      t.float :no
      t.float :otro
      t.date :start_date
      t.date :end_date
      t.integer :num_pills
      t.integer :prescriptions
      t.integer :current_treatment
      t.string :modify
      t.integer :med_treat_order
      t.integer :target
      t.float :prize

      t.timestamps
    end
  end
end
