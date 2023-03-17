class Post < ApplicationRecord
  validate :must_be_title
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def must_be_title
    if title == "True Facts"
      errors.add(:title, "Invalid title")
    end
  end
end
