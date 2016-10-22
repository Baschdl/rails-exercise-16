require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render authors page" do
    visit authors_new_path
    expect(page).to have_text("New author")
  end
end