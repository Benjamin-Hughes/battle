require 'spec_helper'

feature "set names" do
  scenario "Player names are entered and shown onscreen" do
    visit('/')
    fill_in "Player1", with: "Dave"
    fill_in "Player2", with: "Nigel"
    click_button 'Submit'
    expect(page).to have_content('Dave')
    expect(page).to have_content('Nigel')
  end
end
