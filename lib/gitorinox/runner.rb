require "gitorinox/command"
require "gitorinox/list"

module Gitorinox
  class Runner < Command
    subcommand 'list', "List your current watching repositories", Gitorinox::List
  end
end