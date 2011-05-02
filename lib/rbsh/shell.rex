class ShellParser

macro
  # Posix
  WHITESPACE        \s+
  LETTER            [A-Za-z]
  DIGIT             [0-9]
  WORD              [A-Za-z][A-Za-z_]*
  ALNUMWORD         [A-Za-z0-9]+ # Non-posix
  NEWLINE           \n

rule
  {WHITESPACE}       # no action
  {WORD}={ALNUMWORD} { [:ASSIGNMENT_WORD, text] } # Non-posix
  {WORD}={WORD}      { [:ASSIGNMENT_WORD, text] }
  {WORD}             { [:WORD, text] }
  ".*"               { [:WORD, text[1..-2]] }
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

# vim:set ft=racc:

