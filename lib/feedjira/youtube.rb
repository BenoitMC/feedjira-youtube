require "feedjira"

require "feedjira/youtube/version"

require "feedjira/youtube/entry_parser"
require "feedjira/youtube/feed_parser"

Feedjira.parsers.unshift(Feedjira::Youtube::FeedParser)
