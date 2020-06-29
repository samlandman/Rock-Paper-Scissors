feature 'Enter names' do
  scenario "player enters their name and it returns input on the screen" do
    visit '/'
    fill_in :name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Sam'
  end
  scenario "player enters their choice and it returns input on the screen" do
    visit '/'
    fill_in :name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Rock'
  end
end
