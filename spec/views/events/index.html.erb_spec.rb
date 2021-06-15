require 'rails_helper'
require 'capybara/rspec'



RSpec.describe 'events/index', type: :view do
   @creator = User.create(name: 'John Doe', email: 'john@doe', password: '000000', password_confirmation: '000000')
   
   before(:each) do
  #   assign(:events, [
  #            Event.new,
  #            Event.new
  #          ])
  # end
  
  
    assign(:events, [
      Events.create!(
        title: "Title",
        description: "MyText",
        date: "Date.today",
        creator_id: 1
      ),
      Events.create!(
        title: "Title",
        description: "MyText",
        date: "Date.today",
        creator_id: 1
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Download Url".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
