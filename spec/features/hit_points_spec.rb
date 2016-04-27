require 'spec_helper.rb'

feature "Display hit points" do

  scenario 'See the HP of player 2' do
    sign_in_and_play
    expect(page).to have_text("cat HP: 45")
  end
end