module Feedjira
  module Youtube
    class EntryParser < Parser::AtomYoutubeEntry
      sax_config.top_level_elements.delete("media:description")
      sax_config.top_level_elements.delete("summary")

      element :"media:description", as: :summary

      def summary
        return if super.nil?

        super
          .delete("\r")
          .gsub("\n", "<br/>\n")
      end

      def content
        %(#{player_html}<br/><br/>#{summary})
      end

      def player_html
        %(<iframe width="600" height="375" src="https://www.youtube.com/embed/#{youtube_video_id}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>)
      end
    end
  end
end
