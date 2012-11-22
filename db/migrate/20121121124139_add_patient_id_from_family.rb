class AddPatientIdFromFamily < ActiveRecord::Migration
  def change
    add_column :families, :patient_id, :integer
  end
end
