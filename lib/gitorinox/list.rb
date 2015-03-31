module Gitorinox
  class List < Command
    match_option

    def execute
      github.matched_repository_names(match).each { |n| puts n}
    end
  end
end