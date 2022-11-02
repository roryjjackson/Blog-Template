class Tag < ApplicationRecord
  belongs_to :user, :article
  validates :title, :meta_title, :slug, :content, presence: true
end
