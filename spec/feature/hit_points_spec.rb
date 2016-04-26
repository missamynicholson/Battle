feature 'view hit points' do

  scenario 'to see Hit Points of Player 2' do
    visit "/"
    fill_in "Name_1", :with => "Player_1"
    fill_in "Name_2", :with => "Player_2"
    click_button "Submit"
    expect(page).to have_content("Player_2: #{Battle::STARTING_HP}")
  end

end