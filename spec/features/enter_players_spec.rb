require 'spec_helper.rb'

feature "start a fight" do
  scenario "User start a game" do
    visit "/"
    fill_in "name_1", :with => "Player_1"
    fill_in "name_2", :with => "Player_2"
    click_button "Start"
    expect(page).to have_content("Player_1 vs. Player_2")
  end
end
