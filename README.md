# NewRelic::RestApi

New Relic client for the v2 Rest API:

https://docs.newrelic.com/docs/apis/rest-api-v2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'new_relic-rest_api', require: 'new_relic/rest_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_relic-rest_api

## Usage

You need to setup your new relic api key:

```ruby
require 'new_relic/rest_api'

NewRelic::RestApi.config do |config|
  config.key = '<your-api-key>'
end
```
There other options you can setup like:

timeout, open_timeout, retries, ssl_options.

Then you can play with the application resource:

```ruby
  applications = NewRelic::RestApi::Application.all
```

In order to get the metric names for each application:

```ruby
  applications.map(&:metric_names)
```

In order to get the metrics data for each application you need to
pass some metric names from the previous step:

```ruby
  applications.map { |app| app.metric_data(names: ['<some-metric-name-from-above>']) }
```
