class Student < ActiveRecord::Base
  attr_accessible :date, :dvid, :dvname, :stdid, :stdname, :todate,:id,:recalldate
  validates_numericality_of :stdid
  validates_numericality_of :dvid


end
