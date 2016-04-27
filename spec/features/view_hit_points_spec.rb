require 'spec_helper.rb'

feature "view hit points" do
  scenario "player 1 can view player 2's hit points" do
    visit "/"
    fill_in "name_1", :with => "Player_1"
    fill_in "name_2", :with => "Player_2"
    click_button "Start"
    expect(page).to have_content("Player_2: 50HP")
  end
end
