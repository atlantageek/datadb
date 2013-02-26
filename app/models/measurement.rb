class Measurement < ActiveRecord::Base
  attr_accessible :dt, :metric_i, :val
  belongs_to :metric
end
