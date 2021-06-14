class AttendedEvent < ApplicationRecord
    belongs_to :visitor, class_name: 'User'
    belongs_to :attended, class_name: 'Event'
end
