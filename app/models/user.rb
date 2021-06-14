class User < ApplicationRecord
  has_many :events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attended_events, foreign_key: 'visitor_id'
  has_many :attendeds, through: :attended_events

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
