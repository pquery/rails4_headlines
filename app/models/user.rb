class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :stories, class_name: "News"
  
  ROLES = %i[admin editor]
  
  def role? is_role
    role == is_role
  end
end
