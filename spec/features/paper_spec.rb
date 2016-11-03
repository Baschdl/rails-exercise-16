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

  it 'should list all papers on paper index page' do
    @paper = create(:paper)
    visit papers_path
    expect(page).to have_text('Title')
    expect(page).to have_text('Venue')
    expect(page).to have_text('Year')
  end

  it 'should render paper edit page correct' do
    @paper = create(:paper)
    visit '/papers/' + @paper.id.to_s + '/edit'
    expect(page).to have_text('Title')
    expect(page).to have_text('Venue')
    expect(page).to have_text('Year')
  end

  it 'should save changes after edit' do
    @paper = create(:paper)
    visit '/papers/' + @paper.id.to_s + '/edit'
    fill_in 'Venue', with: 'Mind 49'
    click_button 'Create Paper'
    expect(Paper.find_by(title: @paper.title, venue: 'Mind 49', year: @paper.year)).not_to be_nil
  end

  it 'should have link to destroy paper' do
    @paper = create(:paper)

    visit '/papers/'
    expect(page).to have_text('Destroy')
  end
end