feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bianca'
    fill_in :player_2_name, with: 'Makers'
    click_button 'Submit'
    expect(page).to have_content 'Bianca vs. Makers'
  end
end
