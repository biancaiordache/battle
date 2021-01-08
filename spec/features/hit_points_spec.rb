feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Bianca'
    fill_in :player_2_name, with: 'Makers'
    click_button 'Submit'
    expect(page).to have_content 'Makers: 60HP'
  end
end
