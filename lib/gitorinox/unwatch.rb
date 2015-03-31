module Gitorinox
  class Unwatch < Gitorinox::Command
    match_option(true)

    def execute
      unwatched_repositories = []

      github.matched_repository_names(match).each do |repo_name|
        unwatched_repositories << repo_name if github.unwatch(repo_name)
      end

      puts "#{unwatched_repositories.size} repositories unwatched"
    end
  end
end