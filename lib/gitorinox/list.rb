module Gitorinox
  class List < Command

    def execute
      client = Github.new(login: login, password: password)

      puts client
    end
  end
end