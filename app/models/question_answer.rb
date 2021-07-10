class QuestionAnswer < ApplicationRecord
  validates :question_str, presence: true

  before_save :create_answer

  private

  def create_answer
    solved_str = LongestSubstring::find_pattern(question_str)
  end
end
