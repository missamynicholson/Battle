require 'spec_helper.rb'

feature "Entering player names:" do

  scenario "Players start a new game" do
    sign_in_and_play
    expect(page).to have_text("Sergio vs. cat")
  end

end
