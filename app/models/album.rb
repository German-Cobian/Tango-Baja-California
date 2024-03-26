class Album < ApplicationRecord
  has_many :media, dependent: :destroy
end
