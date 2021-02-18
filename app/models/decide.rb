class Decide < ApplicationRecord
  has_many :user
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre_id, presence: true
end
