class Album < ActiveRecord::Base
  belongs_to :user
  has_many :pictures, dependent: :destroy

  extend FriendlyId
  friendly_id :title, use: :slugged
end
