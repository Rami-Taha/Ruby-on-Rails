class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :user, presence: true
  validates_presence_of :title, uniqueness: true
  validates_presence_of :title, length: {minimum:5, maximum: 70}
  validates_presence_of :body, length: {minimum: 10}

  has_attached_file :image, styles: { medium: "600x600>", thumb: "300x350>" } , default_url: "http://i.imgur.com/qIMxAcFs.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
