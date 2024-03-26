class Medium < ApplicationRecord
  belongs_to :album

  has_one_attached :image
  has_one_attached :file
end
