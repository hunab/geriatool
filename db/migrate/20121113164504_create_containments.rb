class CreateContainments < ActiveRecord::Migration
  def change
    create_table :containments do |t|
      t.date :cont_start_date
      t.date :revision_date
      t.date :cont_end_date

      t.timestamps
    end
  end
end
