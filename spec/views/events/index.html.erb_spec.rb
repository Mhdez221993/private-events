require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.new(),
      Event.new()
    ])
  end

  
end
