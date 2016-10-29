require 'rails_helper'

RSpec.describe Paper, type: :model do
  it 'should fail when entering no title (empty string)' do
    paper = expect(Paper.new(title: "", venue: "Mind 49: 433-460", year: 1950)).to_not be_valid
  end

  it 'should fail when entering no title (no field)' do
    paper = expect(Paper.new(venue: "Mind 49: 433-460", year: 1950)).to_not be_valid
  end

  it 'should fail when entering no venue (empty string)' do
    paper = expect(Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "", year: 1950)).to_not be_valid
  end

  it 'should fail when entering no venue (no field)' do
    paper = expect(Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", year: 1950)).to_not be_valid
  end
end
