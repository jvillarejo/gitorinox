module Gitorinox
  class GithubAPI
    def initalize(login, password)
      @client ||= Github.new(login: login, password: password)
    end
  end
end