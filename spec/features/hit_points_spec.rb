require 'spec_helper.rb'

feature "Display hit points" do

  scenario 'See the HP of player 2' do
    visit "/"
    fill_in "Name_1", :with => "Sergio"
    fill_in "Name_2", :with => "cat"
    click_button "Submit"
    expect(page).to have_text("cat HP: 45")
  end
end