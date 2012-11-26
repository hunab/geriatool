class AddPatientIdFromMedicalRecords < ActiveRecord::Migration
  def change
    add_column :medical_records, :patient_id, :integer
  end
end
