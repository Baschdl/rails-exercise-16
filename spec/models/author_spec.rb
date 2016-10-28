require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should return the full name" do
    expect(build(:author).name).to eq('Alan Turing')
  end

  it 'should fail when entering no last name (empty string)' do
    author = Author.new(first_name: "Alan", last_name: "", homepage: "https://de.wikipedia.org/wiki/Alan_Turing").should_not be_valid
  end

  it 'should fail when entering no last name (no field)' do
    author = Author.new(first_name: "Alan", homepage: "https://de.wikipedia.org/wiki/Alan_Turing").should_not be_valid
  end
end
