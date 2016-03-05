class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:confirmable, :validatable, password_length: 5..20

end
