class Diagnosis < ActiveRecord::Base
  attr_accessible :cie_10, :diagnosis, :diagnosis_date
end
