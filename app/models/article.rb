class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :user, presence: true
  validates_presence_of :title, :body
end
