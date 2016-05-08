require 'rails_helper'

RSpec.feature "StaticPages", type: :feature do
  scenario "Visits home" do
    visit "/"

    expect(page).to have_title "Home"
  end
  scenario "Visits help" do
    visit "/help"

    expect(page).to have_title "Help"
  end
  scenario "Visits about" do
    visit "/about"

    expect(page).to have_title "About"
  end
end
