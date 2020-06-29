def sign_in_and_play
  visit('/')
    fill_in :name, with: "Sam"
    #fill_in :RPS_input, with "Rock"
    click_button 'Submit'
end