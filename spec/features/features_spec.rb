feature 'Enter names' do
  scenario "player enters their name and it returns input on the screen" do
    sign_in_and_play
    expect(page).to have_content 'Sam'
  end
  scenario "player enters their choice and it returns input on the screen" do
    sign_in_and_play
    expect(page).to have_content 'Rock'
  end
  scenario "player enters Rock and Computer Chooses Rock. Round Drawn" do
    srand(0)
    sign_in_and_play
    expect(page).to have_content 'draw'
  end

end
