require 'shell.tab.rb'
require 'shell.rex.rb'
require 'context'
require 'command'
require 'bareword'

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
    echo "hello"
  END

  require 'pp'
  pp ast

  context = Context.new
  p ast.eval(context)
end

