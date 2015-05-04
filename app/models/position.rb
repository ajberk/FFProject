class Position < ActiveRecord::Base
  scope :id, -> id { where(:id => id) }
  scope :opponent, -> opponent { where(:opponent => [opponent, "@" + opponent]) }
end
