# Feedjira::Youtube

Alternative Youtube parser for [Feedjira](https://github.com/feedjira/feedjira).

Differences with the original parser :

- it add `<br>` tags to `#summary`
- it add `<br>` tags to `#content`
- it add player to `#content`

```ruby
gem "feedjira-youtube"
```

And then execute:

    $ bundle

## Usage

Just add the gem to your Gemfile.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
