require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render authors page" do
    visit authors_path
    expect(page).to render_template("author/new")
  end
end