require "bundler/setup"
require "feedjira/youtube"

require "pry"
require "awesome_print"

RSpec.configure do |config|
  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  def sample_youtube_atom_feed
    @sample_youtube_atom_feed ||=
      File.read(File.expand_path("sample_feeds/youtube_atom.xml", __dir__))
  end
end
