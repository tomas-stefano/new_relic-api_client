# NewRelic::RestApi

New Relic client for the v2 Rest API:

https://docs.newrelic.com/docs/apis/rest-api-v2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'new_relic-rest_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_relic-rest_api

## Usage

You need to setup your new relic api key:

```ruby
NewRelic::RestApi.config do |config|
  config.key = '<your-api-key>'
end
```
There other options you can setup like:

timeout, open_timeout, retries.

Then you can play with the application resource:

```ruby
  applications = NewRelic::RestApi::Application.all
```

In order to get the metric names for each application:

```ruby
  applications.map(&:metric_names)
```

In order to get the metrics data for each application:

```ruby
  applications.map(&:metrics_data)
```
