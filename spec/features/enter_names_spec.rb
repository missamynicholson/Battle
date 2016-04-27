require 'spec_helper.rb'

feature "entering player names" do

  scenario 'when player start new game' do
    visit "/"

    fill_in "Name_1", :with => "Sergio"
    fill_in "Name_2", :with => "cat"
    click_button "Submit Names"
    expect(page).to have_text("Sergio vs. cat")
  end

end