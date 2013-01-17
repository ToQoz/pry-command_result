require 'stringio'

module Kernel
  def command_result(command)
    output = StringIO.new
    pager = Pry.config.pager
    color = Pry.config.color
    Pry.config.pager = false
    Pry.config.color = false
    Pry.run_command(command, output: output, show_output: true)
    output.string
  ensure
    Pry.config.color = color
    Pry.config.pager = pager
    output.close
  end
end
