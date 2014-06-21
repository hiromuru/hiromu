class ExamSkil < ActiveRecord::Base
  belongs_to :exam
  belongs_to :skil
  
  accepts_nested_attributes_for :skil, allow_destroy: true
end
