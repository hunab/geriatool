class CreateHospitalDerivations < ActiveRecord::Migration
  def change
    create_table :hospital_derivations do |t|
      t.date :derivation_date
      t.text :derivation_cause
      t.string :derivation_hospital
      t.integer :derivation_print
      t.date :discharge_date
      t.text :discharge_diagnosis

      t.timestamps
    end
  end
end
