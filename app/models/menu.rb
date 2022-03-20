class Menu < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'タイヤ脱着' },
    { id: 3, name: 'タイヤ新品交換' },
    { id: 4, name: 'オイル交換' },
    { id: 5, name: 'ランプ交換' },
    { id: 6, name: 'ワイパー交換' },
    { id: 7, name: 'バッテリー交換' },
    { id: 8, name: '定期点検' },
    { id: 9, name: '車検' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :user_posts

  end