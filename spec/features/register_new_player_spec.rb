require "rails_helper"

RSpec.feature "New player", :type => :feature do
  scenario "User navigates to new player form" do
    visit "/"

    click_link "Start"

    expect(page).to have_text("Sign Up for Rock Paper Scissors!")
  end

  scenario "User submits new player form" do
    visit "/"

    click_link "Start"

    fill_in("Name", with: "Example")

    click_on"Submit"

    expect(page).to have_text("Welcome to Rock Paper Scissors!")
  end
end