feature 'Game is over: ' do
  context 'Two players mode' do
    context 'when Player 2 reaches 0 HP first' do
      before do
        two_players_mode
        attack_and_confirm
        allow(Kernel).to receive(:rand).and_return(60)
      end

      scenario 'Player 1 wins' do
        visit('/game_over')
        expect(page).to have_content "GAME OVER!"
        expect(page).to have_content 'Dave wins!'
      end
    end

    context 'when Player 1 reaches 0 HP first' do
      before do
        two_players_mode
        attack_and_confirm
      end

      scenario 'Player 2 wins' do
        attack_and_confirm
        allow(Kernel).to receive(:rand).and_return(60)
        visit('/game_over')
        expect(page).to have_content "GAME OVER!"
        expect(page).to have_content 'Mittens wins!'
      end
    end  
  end
end
