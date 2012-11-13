class CreateBiochemistryTests < ActiveRecord::Migration
  def change
    create_table :biochemistry_tests do |t|
      t.date :extraction_date
      t.string :glucemy
      t.string :hba1c
      t.string :urea
      t.string :creatinine
      t.string :uric_acid
      t.string :cholesterol
      t.string :cHDL
      t.string :cLDL
      t.string :triglycerides
      t.string :ast
      t.string :alt
      t.string :iron
      t.string :ferritin
      t.string :sodium
      t.string :potassium
      t.string :vsg
      t.string :cobalamins_vitb12
      t.string :ac_folico
      t.string :tsh
      t.string :ft3
      t.string :ft4

      t.timestamps
    end
  end
end
