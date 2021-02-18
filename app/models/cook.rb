class Cook < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre


  validates :name, :recipe, :genre_id, presence: true
end 
