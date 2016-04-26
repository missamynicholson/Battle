require 'spec_helper.rb'

Rspec.feature "start a fight", type => :feature do

  scenario "User start a game" do
    visit "/game/new"

    fill_in "Name_1", with => "Player_1"
    fill_in "Name_2", with => "Player_2"

    click_button "Submit"

    expect(page).to have_text("Player_1", "Player_2")
  end

end