require "pry-command_result/version"

module PryCommandResult
  if defined? Pry
    require "pry-command_result/kernel_ext"
  end
end
