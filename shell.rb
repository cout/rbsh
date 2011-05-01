require 'shell.tab.rb'
require 'shell.rex.rb'

class Command
  def initialize(cmd, args)
    @cmd = cmd
    @args = args
    @extend = self
    @pipe = nil
  end

  def |(cmd)
    @extend = @extend.pipe_to(cmd)
    return self
  end

  def pipe_to(cmd)
    @pipe = cmd
    return cmd
  end

  def >(file)
    @extend.redir_to(file)
    return self
  end

  def redir_to(file)
    @redir_to = file
    return self
  end

  def <(file)
    @extend.redir_from(file)
    return self
  end

  def redir_to(file)
    @redir_from = file
    return self
  end

  def -@
    @cmd = "-#{@cmd}"
    return self
  end

  def to_s
    s = "#{@cmd} #{@args.join(' ')}"
    if @redir_to then
      s << " > #{@redir_to}"
    end
    if @redir_from then
      s << " > #{@redir_from}"
    end
    if @pipe then
      s << " | #{@pipe}"
    end
    return s
  end
end

module Commands
  def cmd(str, *args)
    return Command.new(str, args)
  end
end

class Bareword < Command
  def initialize(m, args)
    super(m.to_s, args)
  end
end

module Barewords
  def method_missing(m, *args)
    return Bareword.new(m, args)
  end
end

if __FILE__ == $0 then
  extend Commands

  cmd = cmd("ls", "-1") | cmd("grep", "foo") > "foo.txt"
  puts cmd.to_s

  extend Barewords
  puts ls -lh
  puts(ls -lh | (grep foo))
  puts foo --help

  p = ShellParser.new
  p.parse_str <<-END
    echo "hello"
  END
end

