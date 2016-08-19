class Photo < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", small: "150x150>", thumb: "67x67>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_one :activity, :as =>:postable
  has_one :owner, through: :activity, source: :author
end