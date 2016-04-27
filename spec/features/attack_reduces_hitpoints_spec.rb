feature "attack reduces hitpoints" do
  scenario "player 2's hps reduce when attacked" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Player_1 attacked Player_2")
  end
end
