class Wiki < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  
  scope :visible_to, -> (user) { user ? where(private: false) : 'There was an error.' }
  
end
