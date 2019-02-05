RSpec.describe Feedjira::Youtube::FeedParser do
  let!(:feed) { Feedjira::Feed.parse(sample_youtube_atom_feed) }

  it "should be the default parser for youtube feeds" do
    expect(feed).to be_a Feedjira::Youtube::FeedParser
    expect(feed.entries.first).to be_a Feedjira::Youtube::EntryParser
  end
end
