class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :list_id, :movie_id, presence: true
  validates :comment, length: { minimum: 6 }
end
