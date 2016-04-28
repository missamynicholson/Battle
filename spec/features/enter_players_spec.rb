feature "Start a fight" do
  scenario "User start a game" do
    sign_in_and_play
    expect(page).to have_content("Player_1 vs. Player_2")
  end
end
