class Solution < ApplicationRecord
  validates :question_str, presence: true

  before_save :create_answer
  include LongestSubstring
  private

  def create_answer
    self.solved_str = find_pattern(question_str)
  end
end
