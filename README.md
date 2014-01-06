[![Build Status](https://travis-ci.org/wafcio/thetvdb_mapper.png?branch=master)](https://travis-ci.org/wafcio/thetvdb_mapper)
[![Dependency Status](https://gemnasium.com/wafcio/thetvdb_mapper.png)](https://gemnasium.com/wafcio/thetvdb_mapper)
[![Code Climate](https://codeclimate.com/github/wafcio/thetvdb_mapper.png)](https://codeclimate.com/github/wafcio/thetvdb_mapper)
[![Coverage Status](https://coveralls.io/repos/wafcio/thetvdb_mapper/badge.png)](https://coveralls.io/r/wafcio/thetvdb_mapper)
[![Gem Version](https://badge.fury.io/rb/thetvdb_mapper.png)](http://badge.fury.io/rb/thetvdb_mapper)

# ThetvdbMapper

Fetch data from thetvdb.com and mapping to common hash, where keys are symbols and underline.

## Installation

Add this line to your application's Gemfile:

    gem 'thetvdb_mapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thetvdb_mapper

## Usage

```ruby
ThetvdbMapper::Actor.new(series_id).data # return actors
ThetvdbMapper::Banners.new(series_id).data # return banners hash (not image)
ThetvdbMapper::Episode.new(episode_id).data # return episode
ThetvdbMapper::FullSeries.new(series_id).data # return series with all episodes
ThetvdbMapper::Series.new(series_id).data # return series
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
