feature 'Testing infrastructure' do
  scenario 'Can run app and chack page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
