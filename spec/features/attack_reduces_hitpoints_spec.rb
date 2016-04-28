feature "attack reduces hitpoints" do
  scenario "player 2's hps reduce by 10 when attacked" do
    sign_in_and_play
    click_link('Attack')
    expect(page).not_to have_content("Player_2: 50HP")
    expect(page).to have_content("Player_2: 40HP")
  end
end
