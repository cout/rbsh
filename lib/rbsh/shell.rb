require 'rbsh/shell.tab.rb'
require 'rbsh/shell.rex.rb'
require 'rbsh/context'
require 'rbsh/command'
require 'rbsh/bareword'

if __FILE__ == $0 then
  extend Commands

  cmd = cmd("ls", "-1") | cmd("grep", "foo") > "foo.txt"
  puts cmd.to_s

  extend Barewords
  puts ls -lh
  puts(ls -lh | (grep foo))
  puts foo --help

  p = ShellParser.new
  ast = p.scan_str <<-END
    echo hello world
  END

  require 'pp'
  pp ast

  context = Context.new
  p ast.eval(context)

  ast = p.scan_str <<-END
    foo=42
    echo $foo
  END
end

