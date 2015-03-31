module Gitorinox
  class GithubAPI
    def initialize(login, password)
      @client ||= Github.new(login: login, password: password)
    end

    def matched_repositories(match)
      result = []
      
      @client.activity.watching.watched.each_page do |page|
        page.each do |repo| 
          if match
            result << repo if repo.name.match(match)
          else
            result << repo
          end
        end
      end

      result
    end 

    def unwatch(repository)
      @client.activity.watching.delete(user: repository.owner.login, repo: repository.name)
    end

    def authenticated_username
      @client.users.get.login
    end

  end
end