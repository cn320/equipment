class Devioce < ActiveRecord::Base
  attr_accessible :code, :name, :remain
  validates_numericality_of :code
end
