class Metric < ActiveRecord::Base
  attr_accessible :frequency, :last_updated, :name, :seasonal, :units, :file_path
  has_many :measurements
  has_and_belongs_to_many :facets
end
