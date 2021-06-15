require 'rails_helper'

# validation tests ate in authentication folder

RSpec.describe Event, type: :model do
  @user = User.create(name: 'John Doe', email: 'john@doe', password: '000000', password_confirmation: '000000')

  before { subject.save }

  it 'should have many attended events' do
    t = User.reflect_on_association(:attended_events)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have many attended' do
    t = User.reflect_on_association(:attendeds)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have many events' do
    t = User.reflect_on_association(:events)
    expect(t.macro).to eq(:has_many)
  end
end
