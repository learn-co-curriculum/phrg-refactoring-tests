# frozen_string_literal: true

require "rails_helper"

RSpec.describe Post, type: :model do
  it "is valid" do
    expect(build(:post)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:post, title: nil)).to be_invalid
  end

  it "is invalid with too short content" do
    expect(build(:post, content: "short content")).to be_invalid
  end

  it "is invalid with a long summary" do
    expect(build(:post, summary: "Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content Lots of content")).to be_invalid
  end

  it "is invalid with a category outside the choices" do
    expect(build(:post, category: "Action")).to be_invalid
  end

  it "is invalid if not clickbait" do
    expect(build(:post, title: "New Post")).to be_invalid
  end

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end
end
