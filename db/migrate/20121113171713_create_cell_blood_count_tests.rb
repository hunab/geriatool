class CreateCellBloodCountTests < ActiveRecord::Migration
  def change
    create_table :cell_blood_count_tests do |t|
      t.date :extraction_date
      t.string :red_blood_cells
      t.string :hemoglobin
      t.string :hematocrit
      t.string :vcm
      t.string :hcm
      t.string :chcm
      t.string :platelet
      t.string :leukocyte
      t.string :neutrophils
      t.string :cluster_differentiation
      t.string :monocyte
      t.string :eosinophil
      t.string :basophil

      t.timestamps
    end
  end
end
