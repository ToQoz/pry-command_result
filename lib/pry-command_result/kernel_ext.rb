require 'stringio'

module Kernel
  def command_result(command, target = binding)
    is_command = Pry.commands.to_a.map(&:first).any? do |cmd|
      case cmd
      when Regexp
        cmd =~ command.split(' ').first
      when String
        cmd == command.split(' ').first
      end
    end

    pager = Pry.config.pager
    color = Pry.config.color
    Pry.config.pager = false
    Pry.config.color = false

    if is_command
      output = StringIO.new
      Pry.run_command(command, output: output, show_output: true)
      output.string
    else
      eval(command, target)
    end
  ensure
    Pry.config.color = color
    Pry.config.pager = pager
    output.close if output.respond_to? :close
  end
end
