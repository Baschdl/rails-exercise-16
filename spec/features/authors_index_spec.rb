require 'rails_helper'

describe 'Authors index page', :type => :feature do

  it 'should render author index and show a list of all authors' do
    @author = build(:author)
    @author.save

    visit '/authors/index'
    except(page).to have_text('Turing')
  end

end