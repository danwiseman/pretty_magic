[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/danwiseman/pretty_magic)

# PrettyMagic

Pretty Magic takes text in curly brackets as used on the [Scryfall API](https://scryfall.com/docs/api/colors) as well as other text 
and puts them into `<i>` html tags for use with the [andrewgioia/mana](https://github.com/andrewgioia/mana) and [andrewgioia/keyrune](https://github.com/andrewgioia/keyrune) fonts.

[![Codeship Status for danwiseman/pretty_magic](https://app.codeship.com/projects/6ca8b980-d10e-0138-83ee-46ba07b94fb7/status?branch=master)](https://app.codeship.com/projects/408163)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pretty_magic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pretty_magic

## Usage

Run `PrettyMagic::ManaIcons.mana_symbols("{MANA SYMBOL}")` to get html tags for the Mana & Resource Symbols as documented at https://mana.andrewgioia.com/icons.html

Run `PrettyMagic::ManaIcons.card_symbols("{CARD SYMBOL}")` to get html tags for the Card Symbols as documented at https://mana.andrewgioia.com/icons.html

Run `PrettyMagic::ManaIcons.guild_symbols("{GUILD}")` to get html tags for the Guild and Clan Watermarks as documented at https://mana.andrewgioia.com/icons.html

Run `PrettyMagic::ManaIcons.poleis_symbols("{POLEIS}")` to get html tags for the Poleis Symbols as documented at https://mana.andrewgioia.com/icons.html

Run `PrettyMagic::ManaIcons.add_icons_to_text("YOUR TEXT WITH TAGS IN IT")` to have all four symbol types ran against a long piece of text. Such as the Oracle 
Text of a card. i.e. `{X}{B/P}: Remove up to X counters from target permanent. For each counter removed this way, Hex Parasite gets +1/+0 until end of turn. ({B/P} can be paid with either {B} or 2 life.)`

Run `PrettyMagic::KeyruneIcons.set_symbols("{SET_CODE}")` to get the html tags for the set symbols as documented at https://keyrune.andrewgioia.com/icons.html

Also, ensure the fonts are installed as documented on the fonts' githubs.

## Notes

:information_source: Mana Font: 1.6.0

:information_source: Keyrune Font: 3.7.0

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` 
for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, 
and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file 
to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/danwiseman/pretty_magic. This project is intended to be a safe, welcoming 
space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PrettyMagic project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow 
the [code of conduct](https://github.com/danwiseman/pretty_magic/blob/master/CODE_OF_CONDUCT.md).
