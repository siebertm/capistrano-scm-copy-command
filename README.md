# capistrano-scm-copy-command

[![Gem Version](https://badge.fury.io/rb/capistrano-scm-copy-command.svg)](http://badge.fury.io/rb/capistrano-scm-copy-command)

Deploy anything which can be generated with a command with the help of [`capistrano`](https://github.com/capistrano/capistrano) (Vers. 3):

I use this to deploy a site generated with Gulp, but you could use it to deploy all static sites, e.g. Jekyll, Grunt, even Middleman!

[`capistrano-scm-copy`](https://github.com/wercker/capistrano-middleman) was quite helpful as template for this gem. (I just changed 3 lines.)

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'capistrano-scm-copy-command', require: false
```

and require it in your `Capfile`:

```ruby
require 'capistrano-scm-copy-command'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-scm-copy-command

## Usage


### Activate plugin

You just need to change `:scm` to `:scm_copy_command` in your `deploy.rb` and define your `:build_command`:

```
set :scm, :scm_copy_command
set :build_command, [:gulp, :default, "--env=#{fetch(:stage)}"]
```

### Configuration

You can configure `capistrano-scm-copy-command` by using the following options:

```ruby
# Local name of archive build
set :archive_name, 'archive.zip'

# Name of build_directory
set :build_dir, 'build'

# Keep permissions from filesystem
set :keep_filesystem_permissions, false

# Overwrite permissions of directories
set :directory_permissions, 2775

# Overwrite permissions of files
set :file_permissions, 0664
```

### Required Software

Machine running [`capistrano`](https://github.com/capistrano/capistrano): [capistrano 3](https://github.com/capistrano/capistrano)

Servers:

* mktemp
* unzip

## Contributing

1. Fork it ( https://github.com/siebertm/capistrano-scm-copy-command/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
