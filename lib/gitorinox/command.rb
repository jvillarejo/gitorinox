require 'gitorinox/github_api'

module Gitorinox
  class Command < Clamp::Command
    option ["-l", "--login"], "LOGIN", "Github Login", required: true
    option ["-p", "--password"], "PASSWORD", "Github Password", required: true

    def github
      @github ||= Gitorinox::GithubAPI.new(login,password)
    end

    class << self
      def match_option(required=false)
        option ["-m", "--match"], "MATCH", "Repository Matching Name Expression", required: required
      end
    end
  end
end