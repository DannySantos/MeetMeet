class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_one :profile
  
  after_create do
    profile = Profile.create(user_id: self.id)
    self.update(profile_id: profile.id)
  end
end
