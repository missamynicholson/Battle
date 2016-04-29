feature "Lose confirmation message when hitpoints get to 0HP" do
  scenario "Lose message if Player 2's hps reach 0HP first" do
    allow(Kernel).to receive(:rand) {10}
    sign_in_and_play
    8.times {attack_and_switch}
    click_link('Attack')
    expect(page).to have_content("Sorry Player_2, you've lost.")
  end
end
