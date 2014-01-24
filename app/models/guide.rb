class Guide < ActiveRecord::Base
  validates :guide_for,  :presence => true
  validates :guide_name, :presence => true, :length => { :minimum => 4 }

  has_many :steps
end
