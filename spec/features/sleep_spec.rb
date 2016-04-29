require 'spec_helper.rb'

feature 'Sleep opponent' do
  scenario 'One player mode' do
    one_player_mode
    click_button 'Sleep'
    expect(page).to have_content ('Computer has been put to bed by Dave')
    click_button 'OK'
    expect(page).to have_content ('Dave\'s turn')
  end
end
