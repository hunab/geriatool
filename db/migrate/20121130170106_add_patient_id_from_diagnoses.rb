class AddPatientIdFromDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :patient_id, :integer
  end
end
