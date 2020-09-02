require 'rails_helper'

RSpec.feature "NavigateToHomepage", type: :feature do
  fixtures :state_or_territory

  scenario "navigate to the homepage" do
    visit root_path

    expect(page).to have_css 'h1', text: 'Paycheck Protection Program Loans By State/Terrority'
    expect(page).to have_css 'li', text: 'Iowa'
  end
end
