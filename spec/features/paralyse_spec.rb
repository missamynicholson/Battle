require 'spec_helper.rb'

feature 'Paralyse opponent' do
  scenario 'One player mode' do
    one_player_mode
    click_button 'Paralyse'
    expect(page).to have_content ('Computer has been paralysed by Dave')
    click_button 'OK'
    expect(page).to have_content ('Dave\'s turn')
  end
end
