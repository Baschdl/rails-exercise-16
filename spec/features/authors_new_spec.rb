require 'rails_helper'

describe "Authors new page", :type => :feature do

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
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "https://de.wikipedia.org/wiki/Alan_Turing")
    expect(@author).not_to be_nil
  end

  it 'should save an new author through website' do
    visit '/authors/new'
    @author = build(:author)
    fill_in 'First name', with: @author.first_name
    fill_in 'Last name', with: @author.last_name
    fill_in 'Homepage', with: @author.homepage
    click_button 'Create Author'
    expect(Author.find_by(first_name: @author.first_name, last_name: @author.last_name, homepage: @author.homepage)).not_to be_nil
  end

  it 'should save and find an new author through methods' do
    visit '/authors/new'
    @author = build(:author)
    @author.save
    expect(Author.find_by(first_name: @author.first_name, last_name: @author.last_name, homepage: @author.homepage)).not_to be_nil
  end

  it 'should save changes after edit' do
    @author = create(:author)
    visit '/authors/' + @author.id.to_s + '/edit'
    fill_in 'First name', with: 'Alan Mathison'
    click_button 'Create Author'
    expect(Author.find_by(first_name: 'Alan Mathison', last_name: @author.last_name, homepage: @author.homepage)).not_to be_nil
  end

end