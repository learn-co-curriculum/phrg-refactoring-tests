require 'rails_helper'

RSpec.describe Author, type: :model do
  it "is valid" do
    expect(build :author).to be_valid
  end

  it "is invalid with no name" do
    expect(build :author, name: nil).to be_invalid
  end

  it "is invalid with a short number" do

    expect(build :author, phone_number: 5).to be_invalid
  end

  it "is invalid when non-unique" do
    create :author
    expect(build :author).to be_invalid
  end

  it "has a valid factory" do
    expect(build(:author)).to be_valid
  end
end
