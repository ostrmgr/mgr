class Answer < ActiveRecord::Base
  belongs_to :reply
  belongs_to :question
  belongs_to :possible_answer
  
  validates_presence_of :possible_answer_id, unless: :value?
end
