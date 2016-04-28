feature "Attack reduces hitpoints" do
  scenario "Player 2's hps reduce by 10 when attacked" do
    sign_in_and_play
    click_link('Attack')
    expect(page).not_to have_content("Player_2: 50HP")
    expect(page).to have_content("Player_2: 40HP")
  end

  scenario "Player 1's hps reduce by 10 when attacked" do
    sign_in_and_play
    attack_and_switch
    attack_and_switch
    expect(page).not_to have_content("Player_1: 50HP")
    expect(page).to have_content("Player_1: 40HP")
  end
end
