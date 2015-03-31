module Gitorinox
  class GithubAPI
    def initialize(login, password)
      @client ||= Github.new(login: login, password: password)
    end

    def matched_repository_names(match)
      result = []
      
      @client.activity.watching.watched.each_page do |page|
        page.each do |repo| 
          if match
            result << repo.name if repo.name.match(match)
          else
            result << repo.name
          end
        end
      end

      result
    end

  end
end