require 'rails_helper'

describe 'Authors new page', :type => :feature do

  it 'should have the text field "Title"' do
    visit '/papers/new'
    expect(page).to have_text('Title')
  end

  it 'should have the text field "Venue"' do
    visit "/papers/new"
    expect(page).to have_text('Venue')
  end

  it 'should have the text field "Year"' do
    visit "/papers/new"
    expect(page).to have_text('Year')
  end
end