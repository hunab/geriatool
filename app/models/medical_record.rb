class MedicalRecord < ActiveRecord::Base
  attr_accessible :admission_date, :allergies, :decreasings, :diet, :exit_date, :exit_report, :incontinence, :objective
  validates :allergies, :presence => true
end
