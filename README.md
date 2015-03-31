# Gitorinox

Gitorinox is the Army Knife for Github. It's a command line tool that let you interact with Github API

## Installation

Install it yourself as:

    $ gem install gitorinox

## Usage

For every command you have to put your github credentials using this options
    
    $ gitorinox -l YOUR_LOGIN_USERNAME -p YOUR_LOGIN_PASSWORD

Here are the currently supported commands

### List
  
  It list all your currently watched repositories and outputs on standard output.
  
  Example: 

    $ gitorinox list -l YOUR_LOGIN_USERNAME -p YOUR_LOGIN_PASSWORD
  
  You can also pass another option -m that filters the repositories that match the repository name with the option param. It's like a UNIX grep

  Example 

    $ gitorinox list -l YOUR_LOGIN_USERNAME -p YOUR_LOGIN_PASSWORD -m 2015

  It will output all the repositories which the name contains a 2015 substring

### Unwatch
  
  It unwatches the repositories you are currently watched repositories. The optinal matching param name is required for this action.
  
   Example: 

    $ gitorinox unwatch -l YOUR_LOGIN_USERNAME -p YOUR_LOGIN_PASSWORD -m 2015
  
  Gitorinox will unwatch all the repositories that match 2015 in the repository name

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gitorinox/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
