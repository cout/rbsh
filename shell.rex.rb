#--
# DO NOT MODIFY!!!!
# This file is automatically generated by rex 1.0.2
# from lexical definition file "shell.rex".
#++

require 'racc/parser'
class ShellParser < Racc::Parser
  require 'strscan'

  class ScanError < StandardError ; end

  attr_reader :lineno
  attr_reader :filename

  def scan_setup ; end

  def action &block
    yield
  end

  def scan_str( str )
    scan_evaluate  str
    do_parse
  end

  def load_file( filename )
    @filename = filename
    open(filename, "r") do |f|
      scan_evaluate  f.read
    end
  end

  def scan_file( filename )
    load_file  filename
    do_parse
  end

  def next_token
    p @rex_tokens
    t = @rex_tokens.shift
    if t then
      puts "next token: #{t.inspect}"
      return t
    else
      puts "done"
      return [ false, '$' ]
    end
  end

  def on_error(*args)
    $stderr.puts "ERROR: #{args.inspect}"
  end

  def scan_evaluate( str )
    scan_setup
    @rex_tokens = []
    @lineno  =  1
    ss = StringScanner.new(str)
    state = nil
    until ss.eos?
      text = ss.peek(1)
      @lineno  +=  1  if text == "\n"
      case state
      when nil
        case
        when (text = ss.scan(/\s+/))
          ;

        when (text = ss.scan(/[A-Za-z][A-Za-z_]*/))
           @rex_tokens.push action { [:WORD, text] }

        when (text = ss.scan(/".*"/))
           @rex_tokens.push action { [:WORD, text[1..-2]] }

        when (text = ss.scan(/[A-Za-z][A-Za-z_]*=[A-Za-z][A-Za-z_]*/))
           @rex_tokens.push action { [:ASSIGNMENT_WORD, text] }

        when (text = ss.scan(/xxxxxxxxx/))
           @rex_tokens.push action { [:NAME, text] }

        when (text = ss.scan(/\n/))
           @rex_tokens.push action { [:NEWLINE] }

        when (text = ss.scan(/xxxxxxxxx/))
           @rex_tokens.push action { [:IO_NUMBER, text.to_i] }

        when (text = ss.scan(/\&\&/))
           @rex_tokens.push action { [:AND_IF] }

        when (text = ss.scan(/\|\|/))
           @rex_tokens.push action { [:OR_IF] }

        when (text = ss.scan(/\;\;/))
           @rex_tokens.push action { [:DSEMI] }

        when (text = ss.scan(/\<\</))
           @rex_tokens.push action { [:DLESS] }

        when (text = ss.scan(/\>\>/))
           @rex_tokens.push action { [:DGREAT] }

        when (text = ss.scan(/\<\&/))
           @rex_tokens.push action { [:LESSAND] }

        when (text = ss.scan(/\>\&/))
           @rex_tokens.push action { [:GREATAND] }

        when (text = ss.scan(/\<\>/))
           @rex_tokens.push action { [:LESSGREAT] }

        when (text = ss.scan(/\<\<\-/))
           @rex_tokens.push action { [:DLESSDASH] }

        when (text = ss.scan(/\>\|/))
           @rex_tokens.push action { [:CLOBBER] }

        when (text = ss.scan(/if/))
           @rex_tokens.push action { [:If] }

        when (text = ss.scan(/then/))
           @rex_tokens.push action { [:Then] }

        when (text = ss.scan(/else/))
           @rex_tokens.push action { [:Else] }

        when (text = ss.scan(/elif/))
           @rex_tokens.push action { [:Elif] }

        when (text = ss.scan(/fi/))
           @rex_tokens.push action { [:Fi] }

        when (text = ss.scan(/do/))
           @rex_tokens.push action { [:Do] }

        when (text = ss.scan(/done/))
           @rex_tokens.push action { [:Done] }

        when (text = ss.scan(/case/))
           @rex_tokens.push action { [:Case] }

        when (text = ss.scan(/esac/))
           @rex_tokens.push action { [:Esac] }

        when (text = ss.scan(/while/))
           @rex_tokens.push action { [:While] }

        when (text = ss.scan(/until/))
           @rex_tokens.push action { [:Until] }

        when (text = ss.scan(/for/))
           @rex_tokens.push action { [:For] }

        when (text = ss.scan(/\{/))
           @rex_tokens.push action { [:Lbrace] }

        when (text = ss.scan(/\}/))
           @rex_tokens.push action { [:Rbrace] }

        when (text = ss.scan(/!/))
           @rex_tokens.push action { [:Bang] }

        when (text = ss.scan(/in/))
           @rex_tokens.push action { [:In] }

        else
          text = ss.string[ss.pos .. -1]
          raise  ScanError, "can not match: '" + text + "'"
        end  # if

      else
        raise  ScanError, "undefined state: '" + state.to_s + "'"
      end  # case state
    end  # until ss
  end  # def scan_evaluate

end # class
