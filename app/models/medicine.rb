class Medicine < ActiveRecord::Base
  attr_accessible :available, :description, :expiration, :name
end
