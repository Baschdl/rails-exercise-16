require 'rails_helper'

describe 'Papers new page', :type => :feature do

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

  it 'should save a new paper through website' do
    visit new_paper_path
    @paper = build(:paper)
    fill_in 'Title', with: @paper.title
    fill_in 'Venue', with: @paper.venue
    fill_in 'Year', with: @paper.year
    click_button 'Create Paper'
    expect(Paper.find_by(title: @paper.title, venue: @paper.venue, year: @paper.year)).not_to be_nil
  end

  it 'should save and find a new paper through methods' do
    @paper = build(:paper)
    @paper.save
    expect(Paper.find_by(title: @paper.title, venue: @paper.venue, year: @paper.year)).not_to be_nil
  end
end