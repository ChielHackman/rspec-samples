class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :active_posts, -> { where(active: true) }
  scope :inactive_posts, -> { where(active: false) }
end
