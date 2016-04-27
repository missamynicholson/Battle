require 'spec_helper.rb'

feature "confirm attach" do
  scenario "Player 1 gets confirmation of their attack on player 2" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Player_1 attacked Player_2")
  end
end
