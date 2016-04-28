feature "Confirmation of attacks" do
  scenario "Player 1 gets confirmation of their attack on player 2" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Player_1 attacked Player_2")
  end

  scenario "Player 2 gets confirmation of their attack on player 1" do
    sign_in_and_play
    attack_and_switch
    click_link('Attack')
    expect(page).to have_content("Player_2 attacked Player_1")
  end
end
