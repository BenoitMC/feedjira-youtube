module Feedjira
  module Youtube
    class FeedParser < Parser::AtomYoutube
      sax_config.collection_elements.delete("entry")
      elements :entry, as: :entries, class: EntryParser
    end
  end
end
