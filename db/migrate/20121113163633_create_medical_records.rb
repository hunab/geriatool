class CreateMedicalRecords < ActiveRecord::Migration
  def change
    create_table :medical_records do |t|
      t.string :allergies
      t.string :decreasings
      t.string :diet
      t.string :incontinence
      t.string :objective
      t.date :admission_date
      t.date :exit_date
      t.text :exit_report

      t.timestamps
    end
  end
end
