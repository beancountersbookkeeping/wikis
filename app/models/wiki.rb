class Wiki < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :collaborator
  has_many :user, through: :collaborator
  
  scope :visible_to, -> (user) { user ? where(private: false) : 'There was an error.' }
  
end
