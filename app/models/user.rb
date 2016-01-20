class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :quotes
  has_many :friends
  has_many :groups, through: :user_groups
    
  has_many :user_quotes
  has_many :favorite_quotes
end
