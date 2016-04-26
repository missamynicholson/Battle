feature 'view hit points' do

  scenario 'to see Hit Points of Player 2' do
    sign_in_and_play
    expect(page).to have_content("Player_2: #{Battle::STARTING_HP}")
  end

end
