require 'rails_helper'

describe "guest user adding a new poll" do

  before(:each) do
    visit root_path
    poll = FactoryGirl.build(:poll)
    fill_in "Poll Question", with: poll.question
    fill_in "Poll Option One", with: poll.option_one
    fill_in "Poll Option Two", with: poll.option_two
    click_button "Create Poll"
  end

  it "provides guest with poll created response" do
    expect(page).to have_content "Your poll has been created and is now available at: "
  end

  it "provides guest with a poll link" do
    expect(page).to have_content "#{Capybara.default_host}/polls/#{poll.url_slug}"
  end
end
