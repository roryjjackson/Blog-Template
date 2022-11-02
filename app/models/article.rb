class Article < ApplicationRecord
  has_many :comments
  has_many :tags
  belongs_to :category
  belongs_to :user
  validates :title, :content, :meta_title, :summary, presence: true
end
