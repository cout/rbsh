class Node
end

class Node::CmdName < Node
  def initialize(name)
    @name = name
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
  def initialize(suffix, io_redirect, assignment)
    @suffix = suffix
    @io_redirect = io_redirect
    @assignment = assignment
  end
end

class Node::SimpleCommand < Node
  def initialize(prefix, name, suffix)
    @prefix = prefix
    @name = name
    @suffix = suffix
  end
end

class Node::Command < Node
  def initialize(command, redirect)
    @command = command
    @redirect = redirect
  end
end

class Node::PipeSequence
  def initialize(pipeseq, command)
    @pipeseq = pipeseq
    @command = command
  end
end

class Node::Pipeline
  def initialize(pipeseq, bang)
    @pipeseq = pipeseq
    @bang = bang
  end
end

class Node::AndOr
  def initialize(and_or, and_or_if, pipeline)
    @and_or = and_or
    @and_or_if = and_or_if
    @pipeline = pipeline
  end
end

class Node::List
  def initialize(list, separator_op, and_or)
    @list = list
    @separator_op = separator_op
    @and_or = and_or
  end
end

class Node::CompleteCommand
  def initialize(list, separator)
    @list = list
    @separator = separator
  end
end

