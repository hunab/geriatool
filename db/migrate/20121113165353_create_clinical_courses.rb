class CreateClinicalCourses < ActiveRecord::Migration
  def change
    create_table :clinical_courses do |t|
      t.date :course_date
      t.text :M
      t.text :E
      t.text :A
      t.text :P

      t.timestamps
    end
  end
end
