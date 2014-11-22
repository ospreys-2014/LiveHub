require 'rails_helper'

describe Review do

  it "is valid with a reviewer, artist being reviewed, and body given" do
    user = FactoryGirl.build(:user)
    artist = FactoryGirl.build(:user)
    review = FactoryGirl.create(:review, artist: artist, reviewer: user)

    expect(review).to be_valid
  end

  it "is invalid without a body given" do
    review = FactoryGirl.build(:invalid_body)
    expect(review).to be_invalid
  end

  it "is invalid without referencing an artist" do
    review = FactoryGirl.create(:review, reviewer: user)
    expect(review).to be_invalid
  end

  it "is invalid without referencing a reviewer" do
    review = FactoryGirl.create(:review, artist: artist)
    expect(review).to be_invalid
  end

  it { should have_many(:comments) }
end

