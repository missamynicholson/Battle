def sign_in_and_play
	visit "/"
  fill_in "Name_1", :with => "Sergio"
  fill_in "Name_2", :with => "cat"
  click_button "Submit"
end