feature "View hit points" do
  scenario "Player 1 can view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Player_2: 50HP")
  end

  scenario "Player 1 can view their own hit points" do
    sign_in_and_play
    expect(page).to have_content("Player_1: 50HP")
  end
end
