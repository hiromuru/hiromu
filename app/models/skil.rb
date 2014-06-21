class Skil < ActiveRecord::Base
  has_many :exam_skils
  has_many :exams, :through => :exam_skils
  
  has_one :image, :as => :parent, :dependent => :destroy
  accepts_nested_attributes_for :image, allow_destroy: true
end
