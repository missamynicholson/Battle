require 'spec_helper'

feature 'Attack other player' do
  scenario "Player 1 can attack Player 2" do
    sign_in_and_play
    attack
    expect(page).to have_content("Ben attacked Chris!")
  end
end 

