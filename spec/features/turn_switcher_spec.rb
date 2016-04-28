feature 'switching player turns' do
  scenario 'switches turns' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Chris's turn next!")
  end
end
