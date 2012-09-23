class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :description
      t.date :expiration
      t.boolean :available

      t.timestamps
    end
  end
end
