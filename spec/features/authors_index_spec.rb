require 'rails_helper'

describe 'Authors index page', :type => :feature do

  it 'should render author index and show a list of all authors' do
    @author = build(:author)
    @author.save

    visit '/authors/'
    expect(page).to have_text(@author.name)
  end

end