class ShellParser

macro
  WHITESPACE        \s+
  LETTER            [A-Za-z]
  DIGIT             [0-9]
  WORD              [A-Za-z0-9][A-Za-z_0-9]* # TODO: posix doesn't allow numbers
  NEWLINE           \n

rule
  # Arithmetic expressions
  \$\(\(             { @states.push(state); state = :ARITH; [ :ArithmeticStart ] }
  :ARITH \)\)        { state = @states.pop(); [ :ArithmeticEnd ] }
  :ARITH    ~        { [ :ARITHTILDE ] }
  :ARITH    !        { [ :ARITHBANG ] }
  :ARITH    \*       { [ :ARITHTIMES ] }
  :ARITH    \/       { [ :ARITHDIV ] }
  :ARITH    %        { [ :ARITHMOD ] }
  :ARITH    \+       { [ :ARITHPLUS ] }
  :ARITH    -        { [ :ARITHMINUS ] }
  :ARITH    <<       { [ :ARITHLSHIFT ] }
  :ARITH    >>       { [ :ARITHRSHIFT ] }
  :ARITH    <        { [ :ARITHLT ] }
  :ARITH    <=       { [ :ARITHLE ] }
  :ARITH    >        { [ :ARITHGT ] }
  :ARITH    >=       { [ :ARITHGE ] }
  :ARITH    ==       { [ :ARITHEQ ] }
  :ARITH    !=       { [ :ARITHNE ] }
  :ARITH    &        { [ :ARITHBITAND ] }
  :ARITH    ^        { [ :ARITHBITXOR ] }
  :ARITH    \|       { [ :ARITHBITOR ] }
  :ARITH    &&       { [ :ARITHLOGAND ] }
  :ARITH    \|\|     { [ :ARITHLOGOR ] }
  :ARITH    \?       { [ :ARITHQUESTION ] }
  :ARITH    :        { [ :ARITHCOLON ] }
  :ARITH    =        { [ :ARITHASSIGN ] }
  :ARITH    \*=      { [ :ARITHASSIGNTIMES ] }
  :ARITH    \/=      { [ :ARITHASSIGNDIV ] }
  :ARITH    %=       { [ :ARITHASSIGNMOD ] }
  :ARITH    \+=      { [ :ARITHASSIGNPLUS ] }
  :ARITH    -=       { [ :ARITHASSIGNMINUS ] }
  :ARITH    <<=      { [ :ARITHASSIGNLSHIFT ] }
  :ARITH    >>=      { [ :ARITHASSIGNRSHIFT ] }
  :ARITH    &=       { [ :ARITHASSIGNBITAND ] }
  :ARITH    ^=       { [ :ARITHASSIGNBITXOR ] }
  :ARITH    '|='     { [ :ARITHASSIGNBITOR ] }
  :ARITH    {DIGIT}* { [ :ARITHINT, text.to_i ] }

  # Parameter expressions
  \$\{               { @states.push(state); state = :PARAM; [ :ParamStart ] }
  :PARAM \}          { state = @states.pop(); [ :ParamEnd ] }

  {WHITESPACE}       # no action
  \#.*{NEWLINE}      # no action
  {WORD}={WORD}      { [:ASSIGNMENT_WORD, text] }
  {WORD}             { [:WORD, text] }
  ".*"               { [:WORD, text[1..-2]] } # TODO: string
  '.*'               { [:WORD, text[1..-2]] } # TODO: string
  xxxxxxxxx          { [:NAME, text] }
  {NEWLINE}          { [:NEWLINE] }
  xxxxxxxxx          { [:IO_NUMBER, text.to_i] }
  \&\&               { [:AND_IF] }
  \|\|               { [:OR_IF] }
  \;\;               { [:DSEMI] }
  \<\<               { [:DLESS] }
  \>\>               { [:DGREAT] }
  \<\&               { [:LESSAND] }
  \>\&               { [:GREATAND] }
  \<\>               { [:LESSGREAT] }
  \<\<\-             { [:DLESSDASH] }
  \>\|               { [:CLOBBER] }
  if                 { [:If] }
  then               { [:Then] }
  else               { [:Else] }
  elif               { [:Elif] }
  fi                 { [:Fi] }
  do                 { [:Do] }
  done               { [:Done] }
  case               { [:Case] }
  esac               { [:Esac] }
  while              { [:While] }
  until              { [:Until] }
  for                { [:For] }
  \{                 { [:Lbrace] }
  \}                 { [:Rbrace] }
  !                  { [:Bang] }
  in                 { [:In] }

  \(                 { [ :LPAREN ] }
  \)                 { [ :RPAREN ] }
  \$\$               { [ :DOLLARDOLLAR ] }
  \$                 { [ :DOLLAR ] }
  
inner

  def scan_setup
    @states = [ ]
  end

# vim:set ft=racc:

