require "rails_helper"

RSpec.feature "Select weapon", :type => :feature do
  scenario "User visits select weapon screen" do
    visit "/"

    click_link "Start"
    fill_in("Name", with: "Example")
    click_on"Submit"
    click_on"Play"

    expect(page).to have_text("Weapon")
  end

  scenario "User submits their chosen weapon" do
    visit "/"

    click_link "Start"
    fill_in("Name", with: "Example")
    click_on"Submit"
    click_on"Play"
    fill_in("Weapon", with: "Rock")
    click_on"Submit"

    expect(page).to have_text("You have chosen your weapon!")
  end
end