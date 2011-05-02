require 'command'

class Node
end

class Node::CmdName < Node
  def initialize(name)
    @name = name
  end

  def eval(context)
    return @name
  end
end

class Node::CmdPrefix < Node
  def initialize(prefix, io_redirect, assignment)
    @prefix = prefix
    @io_redirect = io_redirect
    @assignment = assignment
  end
end

class Node::CmdSuffix < Node
  def initialize(suffix, io_redirect, word)
    @suffix = suffix
    @io_redirect = io_redirect
    @word = word
  end

  def eval(context)
    raise 'io_redirect not yet supported' if @io_redirect
    raise 'suffix not yet supported' if @suffix
    return [ @word ]
  end
end

class Node::SimpleCommand < Node
  def initialize(prefix, name, suffix)
    @prefix = prefix
    @name = name
    @suffix = suffix
  end

  def eval(context)
    raise 'prefix not yet supported' if @prefix
    cmd = @name.eval(context)
    args = @suffix.eval(context)
    return Command.new(cmd, args) # TODO: evaluate command
  end
end

class Node::Command < Node
  def initialize(command, redirect)
    @command = command
    @redirect = redirect
  end

  def eval(context)
    raise 'redirect not yet supported' if @redirect
    @command.eval(context)
  end
end

class Node::PipeSequence
  def initialize(pipeseq, command)
    @pipeseq = pipeseq
    @command = command
  end

  def eval(context)
    raise 'pipeseq not yet supported' if @pipeseq
    @command.eval(context)
  end
end

class Node::Pipeline
  def initialize(pipeseq, bang)
    @pipeseq = pipeseq
    @bang = bang
  end

  def eval(context)
    raise 'bang not yet supported' if @bang
    @pipeseq.eval(context)
  end
end

class Node::AndOr
  def initialize(and_or, and_or_if, pipeline)
    @and_or = and_or
    @and_or_if = and_or_if
    @pipeline = pipeline
  end

  def eval(context)
    raise 'and_or not yet supported' if @and_or
    raise 'and_or_if not yet supported' if @and_or_if
    @pipeline.eval(context)
  end
end

class Node::List
  def initialize(list, separator_op, and_or)
    @list = list
    @separator_op = separator_op
    @and_or = and_or
  end

  def eval(context)
    raise "list not yet supported" if @list
    raise "separator_op not yet supported" if @separator_op
    @and_or.eval(context)
  end
end

class Node::CompleteCommand
  def initialize(list, separator)
    @list = list
    @separator = separator
  end

  def eval(context)
    raise "separator not yet supported" if @separator
    @list.eval(context)
  end
end

