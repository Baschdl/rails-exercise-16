require 'rails_helper'

RSpec.describe "authors/new.html.erb", type: :view do

  it "should have the text field 'first name'" do
    visit "/authors/new"
    expect(page).to have_text("first name")
  end
end