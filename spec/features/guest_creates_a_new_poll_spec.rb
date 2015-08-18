require 'rails_helper'

describe "guest user adding a new poll" do

  before(:all) do
    visit new_poll_path
    poll = build(:guest_poll)
    fill_in "Poll Question", with: poll.poll_question
    fill_in "Option 1", with: poll.option_one
    fill_in "Option 2", with: poll.option_two
    click_button "Create Poll"
  end
  
  it "allows guest to ask four questions" do
    expect(page).to have_content "Your poll has been created and is now available at: "
  end

end
