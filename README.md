# Rubocop::Emoji

This formatter display green hearts for files with no offenses and
broken red hearts for files with problems in them. In the end it
appends the regular report data in the clang style format.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "rubocop-emoji", require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-emoji

## Usage

    $ bundle exec rubocop --require rubocop/formatter/emoji_formatter --format RuboCop::Formatter::EmojiFormatter

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rubocop-emoji/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
