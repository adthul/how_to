class Step < ActiveRecord::Base
  validates :step_number,  :presence => true
  validates :step_name, :presence => true, :length => { :minimum => 4 }
  validates :content, :presence => true

  belongs_to :guide
end
