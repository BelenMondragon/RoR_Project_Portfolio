class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :projects
  has_many :skills
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>>>> Temporary merge branch 2
end
