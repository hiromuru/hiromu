class Exam < ActiveRecord::Base
  has_many :exam_skils
  has_many :skils, :through => :exam_skils
  accepts_nested_attributes_for :skils, allow_destroy: true
  
  has_many :images, :as => :parent, :dependent => :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
end
