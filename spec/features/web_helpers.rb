def sign_in_and_play
  visit "/"
  fill_in "name_1", :with => "Player_1"
  fill_in "name_2", :with => "Player_2"
  click_button "Start"
end

def attack_and_switch
  click_link('Attack')
  click_link('Switch')
end
