class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_one :profile
  
  has_many :reviews, foreign_key: "reviewed_id"
  has_many :reviewed, class_name: "Review", foreign_key: "reviewer_id"
  
  has_many :received_messages, class_name: "Message", foreign_key: :receiver_id
  has_many :sent_messages, class_name: "Message", foreign_key: :sender_id
  
  after_create do
    profile = Profile.create(user_id: self.id)
    self.update(profile_id: profile.id)
  end
end
