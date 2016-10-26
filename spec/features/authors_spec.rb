require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render authors page" do
    visit "/authors/new"
    expect(page).to have_text("New author")
  end

  it "should have the text field 'first name'" do
    visit "/authors/new"
    expect(page).to have_text("First name")
  end

  it "should have a 'Create author' button" do
    visit "/authors/new"
    expect(page).to have_button("Create Author")
  end

  it "should create a instance of Author after entering data" do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(@author).not_to be_nil
  end
end