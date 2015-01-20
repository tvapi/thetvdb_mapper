[![Build Status](https://travis-ci.org/tvapi/thetvdb_mapper.png?branch=master)](https://travis-ci.org/tvapi/thetvdb_mapper)
[![Dependency Status](https://gemnasium.com/tvapi/thetvdb_mapper.png)](https://gemnasium.com/tvapi/thetvdb_mapper)
[![Code Climate](https://codeclimate.com/github/tvapi/thetvdb_mapper.png)](https://codeclimate.com/github/tvapi/thetvdb_mapper)
[![Coverage Status](https://coveralls.io/repos/tvapi/thetvdb_mapper/badge.png)](https://coveralls.io/r/tvapi/thetvdb_mapper)
[![Gem Version](https://badge.fury.io/rb/thetvdb_mapper.png)](http://badge.fury.io/rb/thetvdb_mapper)

# ThetvdbMapper

ThetvdbMapper mapping and normalizing keys in hash data provided by ThetvdbApi.

## Installation

Add this line to your application's Gemfile:

    gem 'thetvdb_mapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thetvdb_mapper

## Usage

```ruby
ThetvdbMapper::Actor.new(data)
ThetvdbMapper::Banners.new(data)
ThetvdbMapper::Episode.new(data)
ThetvdbMapper::Series.new(data)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
