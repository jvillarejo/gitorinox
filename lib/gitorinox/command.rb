require 'gitorinox/github_api'

module Gitorinox
  class Command < Clamp::Command
    option ["-l", "--login"], "LOGIN", "Github Login"
    option ["-p", "--password"], "PASSWORD", "Github Password"
    option ["-m", "--match"], "MATCH", "Repository Matching Name Expression"

    def github
      @github ||= Gitorinox::GithubAPI.new(login,password)
    end
  end
end