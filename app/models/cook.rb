class Cook < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :name, :recipe, :genre_id, presence: true
end 
