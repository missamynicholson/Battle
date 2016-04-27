require 'spec_helper.rb'

feature "view hit points" do
  scenario "player 1 can view player 2's hit points" do
  sign_in_and_play
    expect(page).to have_content("Player_2: 50HP")
  end
end
