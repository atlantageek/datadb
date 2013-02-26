class Category < ActiveRecord::Base
  has_many :facets
  attr_accessible :name
end
