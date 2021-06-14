class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attended_events, foreign_key: 'attended_id'
  has_many :visitors, through: :attended_events

  scope :past_events, -> { where('Date < ?', Date.today) }
  scope :future_events, -> { where('Date >= ?', Date.today) }
end
