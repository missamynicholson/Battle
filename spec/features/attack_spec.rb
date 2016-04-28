require 'spec_helper.rb'

feature 'Player 1 attacks Player 2: ' do
  scenario 'Receive confirmation of the attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content ('Dave attacked Mittens')
  end

  scenario 'After confirmation, Player\'s 2 HP decrease' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content ('Mittens: 50HP')
  end
end
