class Reply < ActiveRecord::Base
  belongs_to :poll
  has_many :answers, dependent: :destroy
  
  accepts_nested_attributes_for :answers
end
