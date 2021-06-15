require 'rails_helper'

@creator = User.create(name: 'John Doe', email: 'john@doe', password: '000000', password_confirmation: '000000')

RSpec.describe Event, type: :model do
  subject { Event.new(title: 'Test event', description: "Test event's description", date: Date.today, creator_id: 1) }

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'creates event with valid attributes' do
    expect(subject).to be_valid
  end

  it 'description should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'date should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'should have many attended events' do
    t = Event.reflect_on_association(:attended_events)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have many visitor' do
    t = Event.reflect_on_association(:visitors)
    expect(t.macro).to eq(:has_many)
  end

  it 'should belong to user' do
    t = Event.reflect_on_association(:creator)
    expect(t.macro).to eq(:belongs_to)
  end
end
