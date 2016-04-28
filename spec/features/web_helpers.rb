def sign_in_and_play
  visit('/')
  fill_in('name1', with:"Amy")
  fill_in('name2', with:"Chris")
  click_button('Submit')
end

def attack
  click_button('Attack!')
end

def switch
  click_button('Next')
end