RSpec.describe Feedjira::Youtube::EntryParser do
  let!(:feed) { Feedjira.parse(sample_youtube_atom_feed) }
  let!(:entry) { feed.entries.first }

  it "should return summary and add br tags" do
    expect(entry.summary).to eq "A question is the most powerful force in the world.<br/>\nIt can start you on an adventure or spark a connection. See where a question can take you. The Google app is available on iOS and Android. Download the app here: http://www.google.com/search/about/download"
  end

  it "should not try to add br tags if summary is nil" do
    xml = sample_youtube_atom_feed.gsub("A question is the most powerful force in the world.\nIt can start you on an adventure or spark a connection. See where a question can take you. The Google app is available on iOS and Android. Download the app here: http://www.google.com/search/about/download", "")
    entry = Feedjira.parse(xml).entries.first
    expect(entry.summary).to eq nil
  end

  it "should return player_html" do
    expect(entry.player_html).to eq \
      %(<iframe width="600" height="375" src="https://www.youtube.com/embed/5shykyfmb28" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>)
  end

  it "should return generate content using player and summary" do
    expect(entry).to receive(:summary).and_return("summary")
    expect(entry).to receive(:player_html).and_return("player_html")

    expect(entry.content).to eq "player_html<br/><br/>summary"
  end
end
