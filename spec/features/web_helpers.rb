def sign_in_and_play
  visit "/"
  fill_in "Name_1", :with => "Player_1"
  fill_in "Name_2", :with => "Player_2"
  click_button "Submit"
end
