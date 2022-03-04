require "rails_helper"

RSpec.feature "New game", :type => :feature do
  scenario "User starts a new game" do
    visit "/"

    click_link "Start"
    fill_in("Name", with: "Example")
    click_on"Submit"
    click_on"Play"
    expect(page).to have_text("Choose your weapon!")
  end
end