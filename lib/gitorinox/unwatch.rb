module Gitorinox
  class Unwatch < Gitorinox::Command
    match_option(true)

    def execute
      unwatched_repositories = []

      github.matched_repositories(match).each do |repo|
        unwatched_repositories << repo.name if github.unwatch(repo)
      end

      puts "#{unwatched_repositories.size} repositories unwatched"
    end
  end
end