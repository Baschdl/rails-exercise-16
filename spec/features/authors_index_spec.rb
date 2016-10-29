require 'rails_helper'

describe 'Authors index page', :type => :feature do

  it 'should render author index and show a list of all authors' do
    @author = build(:author)
    @author.save

    visit '/authors/'
    expect(page).to have_text(@author.name)
  end

  it 'should display right column name' do
    visit '/authors/'
    expect(page).to have_text('Name')
  end

  it 'should have link to add authors' do
    visit '/authors/'
    expect(page).to have_text('Add author')
  end

  it 'should have link to edit author' do
    @author = build(:author)
    @author.save

    visit '/authors/'
    expect(page).to have_text('Edit')
  end

end