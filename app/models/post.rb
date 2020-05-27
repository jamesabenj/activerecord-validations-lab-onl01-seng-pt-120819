class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250}
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: %w{Fiction Non-Fiction}
  validate :clickbaity_title
end

def clickbaity_title
  if title.present && !title.include("Wont Believe", "Secret", "Top[number]", "Guess")
    errors.add(:title, "isn't clickbaity enough")
  end
end
