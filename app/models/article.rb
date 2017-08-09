class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :user, presence: true
  validates_presence_of :title, uniqueness: true
  validates_presence_of :title, length: {minimum:5, maximum: 70}
  validates_presence_of :body, length: {minimum: 10}
end
