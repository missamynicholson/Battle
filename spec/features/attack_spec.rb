require 'spec_helper.rb'

feature 'Player 1 attacks Player 2: ' do
  scenario 'One player mode' do
    one_player_mode
    click_button 'Attack'
    expect(page).to have_content ('Dave attacked Computer')
  end

  scenario 'After confirmation, Player\'s 2 HP decrease' do
    allow(Kernel).to receive(:rand).and_return(10)
    one_player_mode
    attack_and_confirm
    expect(page).to have_content ('Computer: 50HP')
  end
end
