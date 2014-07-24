class Collection < ActiveRecord::Base
  has_many :images

  validates :title, presence: true, length: { maximum: 50 }
end
