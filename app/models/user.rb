class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, foreign_key: :author_id #kluczem obcym jest author id
  has_many :likes
  has_many :liked_articles, through: :likes, source: :article 
end
