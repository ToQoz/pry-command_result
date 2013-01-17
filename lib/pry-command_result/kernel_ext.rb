require 'stringio'

module Kernel
  def command_result(command)
    output = StringIO.new
    pager = Pry.config.pager
    Pry.config.pager = false
    Pry.run_command(command, output: output, show_output: true)
    output.string
  ensure
    Pry.config.pager = pager
    output.close
  end
end
