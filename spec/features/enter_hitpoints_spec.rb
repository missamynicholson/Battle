require 'spec_helper'

feature 'Enter starting HP' do
  scenario "Player 1 can see Player 2's Hit Points" do
    visit('/')
    fill_in('name1', with:"Ben")
    fill_in('name2', with:"Chris")
    click_button('Submit')
    expect(page).to have_content("Chris has 100 Hit Points")
  end

  scenario "Player 2 can see Player 1's Hit Points" do
    visit('/')
    fill_in('name1', with:"Ben")
    fill_in('name2', with:"Chris")
    click_button('Submit')
    expect(page).to have_content("Ben has 100 Hit Points")
  end
end