require 'spec_helper.rb'

feature "entering player names" do

  scenario 'when player start new game' do
    sign_in_and_play
    expect(page).to have_text("Sergio vs. cat")
  end

end
