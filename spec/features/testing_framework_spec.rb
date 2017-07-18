require 'spec_helper'

feature 'test infrastructure working' do
  scenario "homepage shows what we want" do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

end
