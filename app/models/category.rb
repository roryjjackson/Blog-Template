class Category < ApplicationRecord
  has_many :articles
  validates :title, :meta_title, :slug, :content, presence: true
end
