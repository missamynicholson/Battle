feature 'Switching turns: ' do
  context 'At the beginning of the game' do
    scenario 'Player 1 begins' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end

    scenario 'After player 1 attacks, is Player\'s 2 turn' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Dave's turn"
      expect(page).to have_content "Mittens's turn"
    end
  end
end  