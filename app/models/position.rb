class Position < ActiveRecord::Base
  scope :id, -> id { where(:id => id) }
end
