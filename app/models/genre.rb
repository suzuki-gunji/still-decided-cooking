class Genre < ActiveHash::Base
  self.data = [
    { id: 1, genre: '和食' },
    { id: 2, genre: '麺類' },
    { id: 3, genre: '揚げ物' },
    { id: 4, genre: '鍋' },
    { id: 5, genre: '中華' },
    { id: 6, genre: 'イタリアン' },
    { id: 7, genre: 'フレンチ' },
  ]

  include ActiveHash::Associations
  has_many :cooks
  has_many :decides
end
