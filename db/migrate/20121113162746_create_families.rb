class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :family_name
      t.string :phone
      t.string :mobile_phone
      t.string :family_name_2
      t.string :phone_2
      t.string :mobile_phone_2

      t.timestamps
    end
  end
end
