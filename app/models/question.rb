class Question < ActiveRecord::Base
  has_many :answers
  validates :body, presence: true
end
