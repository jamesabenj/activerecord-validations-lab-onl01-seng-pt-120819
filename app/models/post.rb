class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { min: 250}
  validates :summery, length: { max: 250}
end
