module Gitorinox
  class List < Command
    match_option

    def execute
      github.matched_repositories(match).each { |repo| puts repo.name}
    end
  end
end