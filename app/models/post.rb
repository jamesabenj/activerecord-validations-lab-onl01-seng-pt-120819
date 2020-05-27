class Post < ActiveRecord::Base
  validates :title, presence: true, inclusion: %w{"Won't Believe" "Secret" "Top[number]" "Guess"}
  validates :content, length: { minimum: 250}
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: %w{Fiction Non-Fiction}
end
