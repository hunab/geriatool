class AddPatientIdFromFall < ActiveRecord::Migration
  def change
    add_column :falls, :patient_id, :integer
  end
end
