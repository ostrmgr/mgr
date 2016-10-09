class Poll < ActiveRecord::Base
  validates_presence_of :title
  has_many :questions, dependent: :destroy
  has_many :replies, dependent: :destroy
  
  def serialize_for_graph
    PollSerializer.count_per_day(self).to_json
end
end
