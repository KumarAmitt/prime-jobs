class Job < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :position, presence: true

  scope :recent_first, -> { order('created_at DESC') }
  scope :archived, -> { where(archived: true) }
  scope :active, -> { where(archived: false) }
end
