feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sing_in_and_play
    expect(page).to have_content 'Makers: 60HP'
  end
end
