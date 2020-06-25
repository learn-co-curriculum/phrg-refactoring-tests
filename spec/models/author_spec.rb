require 'rails_helper'

RSpec.describe Author, type: :model do
  it "is valid" do
    expect(build(:author, name: "Caligula", phone_number: "5553054425")).to be_valid
  end

  it "is invalid with no name" do
    expect(build(:author, name: nil, phone_number: "5553054425")).to be_invalid
  end

  it "is invalid with a short number" do
    expect(build(:author, name: "Caligula", phone_number: 555305442)).to be_invalid
  end

  it "is invalid when non-unique" do
    x = create(:author, name: "Caligula", phone_number: 5553054425)
    author = build(:author, name: "Caligula", phone_number: 5557890001)
    expect(author.valid?).to eq(false)
  end

  it "has a valid factory" do
    expect(build(:author)).to be_valid
  end
end
