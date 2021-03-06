require 'spec_helper'

describe FakeTwitter do
  it 'allows for assignment and retrieval of search results' do
    FakeTwitter["#ruby"] = [{ text: "I love #ruby" }]
    expect(FakeTwitter.search("#ruby", {}).first.text).to eq 'I love #ruby'
  end

  it 'allows for tweets to be cleared' do
    FakeTwitter["#ruby"] = [{ text: "I love #ruby" }]
    FakeTwitter.clear

    expect(FakeTwitter.search('#ruby', {})).to be_empty 
  end
end
