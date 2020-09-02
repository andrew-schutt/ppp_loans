require 'rails_helper'

RSpec.feature "ViewStatePppLoans", type: :feature do
  fixtures :state_or_territory

  scenario "view ppp loans for state" do
    visit root_path

    click_link("Iowa")
    expect(page).to have_css 'h1', text: "Iowa"
    expect(page).to have_css 'li', text: "149995,CEDAR RAPIDS,IA,52401,541110,Non-Profit Organization,Unanswered,Unanswered,Unanswered,Y,10,05/01/2020,Bank of the West,IA - 01"
  end
end
