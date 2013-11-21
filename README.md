# MultilevelSidekiq

Capistrano recipe for running multiple processes with multiple configurations.
When running multiple sidekiq processes, it loads different configuration file
for each process if available. The configuration files should be named as:

    sidekiq.yml, sidekiq.yml-1, sidekiq.yml-2, ...

Use case for this would be running multiple sidekiq processes watching
different queues. For example, some may have `:heavy` queue for long-running
background jobs (like batch processing) and `:default` queue for other
purposes. If you let processes to watch multiple queues simultaneously, it may
cause denial of service problem as long-running jobs would eat all the child
threads eventually.

## Installation

Add this line to your application's Gemfile:

    gem 'multilevel-sidekiq'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multilevel-sidekiq

## Usage

Load `multilevel_sidekiq/capistrano' in your `deploy.rb`.

    require 'multilevel_sidekiq/capistrano'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
