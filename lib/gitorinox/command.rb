module Gitorinox
  class Command < Clamp::Command
    option ["-l", "--login"], "LOGIN", "Github Login"
    option ["-p", "--password"], "PASSWORD", "Github Password"
    option ["-m", "--match"], "MATCH", "Repository Matching Name Expression"
  end
end