class Comment < ApplicationRecord
  belongs_to :user, :article
  validates :title, :content, presence: true
end
