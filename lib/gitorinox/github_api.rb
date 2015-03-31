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

    def unwatch(repo_name)
      @client.activity.watching.delete(user: authenticated_username, repo: repo_name)
    end

    def authenticated_username
      @client.users.get.login
    end

  end
end