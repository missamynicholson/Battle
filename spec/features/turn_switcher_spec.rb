feature 'switching player turns' do
  scenario 'switches turns' do
    sign_in_and_play
    attack
    switch
    expect(page).to have_content("It's your turn Chris")
  end
end