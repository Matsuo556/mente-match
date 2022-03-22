class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :user_posts
  has_many :post_rooms

  with_options presence: true do
   validates :nickname
   validates :last_name,        format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角（漢字・ひらがな・カタカナ）を使用してください' }
   validates :first_name,       format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角（漢字・ひらがな・カタカナ）を使用してください' }
   validates :last_name_kana,   format: { with: /\A[ァ-ヶー－]+\z/, message: '全角(カタカナ)で入力して下さい' }
   validates :first_name_kana,  format: { with: /\A[ァ-ヶー－]+\z/, message: '全角(カタカナ)で入力して下さい' }
   validates :phone_number,     numericality: { only_integer: true, message: 'is invalid. Input half-width number except hyphen(-)' }, length: { minimum: 10, maximum: 11, message: 'does not fit in setting count.' }
  end

  validates :nickname,          uniqueness: true
  
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には半角で英字と数字の両方を含めて設定してください'
end
