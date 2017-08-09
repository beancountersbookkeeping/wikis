class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :wikis
  has_many :collaborated_wikis, through: :collaborators, source: :wiki
  
  after_initialize { self.role ||= :standard }
  
  enum role: [:standard, :admin, :premium]
end
