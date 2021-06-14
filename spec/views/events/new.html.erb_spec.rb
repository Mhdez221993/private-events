require 'rails_helper'

# rubocop: disable Lint/EmptyBlock

RSpec.describe 'events/new', type: :view do
  before(:each) do
    assign(:event, Event.new)
  end

  it 'renders new event form' do
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
    end
  end
end

# rubocop: enable Lint/EmptyBlock
