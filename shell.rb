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

if __FILE__ == $0 then
  extend Commands

  cmd = cmd("ls", "-1") | cmd("grep", "foo") > "foo.txt"
  puts cmd.to_s
end

