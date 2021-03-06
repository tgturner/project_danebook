class Comment < ApplicationRecord

  validates :content, presence: true

  belongs_to :commentable, polymorphic: true
  has_one :activity, :as => :postable
  has_one :owner, through: :activity, source: :author
end
