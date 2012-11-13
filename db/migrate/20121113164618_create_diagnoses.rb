class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.string :diagnosis
      t.date :diagnosis_date
      t.string :cie_10

      t.timestamps
    end
  end
end
