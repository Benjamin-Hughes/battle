require 'spec_helper'

feature "set names" do
  scenario "Player names are entered and shown onscreen" do
    enter_names
    expect(page).to have_content('Dave')
    expect(page).to have_content('Nigel')
  end

  scenario "Player 2 starts with 100 HP" do
    enter_names
    expect(page).to have_content("HP:100")
  end

  def enter_names
    visit('/')
    fill_in "Player1", with: "Dave"
    fill_in "Player2", with: "Nigel"
    click_button 'Submit'
  end
end
