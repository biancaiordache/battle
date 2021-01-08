def sing_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Bianca'
  fill_in :player_2_name, with: 'Makers'
  click_button 'Submit'
end
