module Gitorinox
  class List < Clamp::Comand

    option ["-l", "--login"], "LOGIN", "Github Login"
    option ["-p", "--password"], "PASSWORD", "Github Password"
    option ["-m", "--match"], "MATCH", "Repository Matching Name Expression"

    def execute
      client = Github.new(login: login, password: password)

      pust client
    end
  end
end