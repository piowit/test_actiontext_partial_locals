class Comment < ApplicationRecord
  has_rich_text :content

  validates :author, presence: true
  validates :content, presence: true
end
