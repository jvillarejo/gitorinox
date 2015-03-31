require "gitorinox/command"
require "gitorinox/list"
require "gitorinox/unwatch"

module Gitorinox
  class Runner < Clamp::Command
    subcommand 'list', "List your current watching repositories", Gitorinox::List
    subcommand 'unwatch', "Unwatch the matching repositories you are currently watching", Gitorinox::Unwatch
  end
end