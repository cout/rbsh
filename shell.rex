class ShellParser

macro
  WHITESPACE        \s+
  LETTER            [A-Za-z]
  DIGIT             [0-9]
  WORD              [A-Za-z][A-Za-z_]*
  NEWLINE           \n

rule
  {WHITESPACE}      # no action
  {WORD}            { [:WORD, text] }
  ".*"              { [:WORD, text[1..-2]] }
  {WORD}={WORD}     { [:ASSIGNMENT_WORD, text] }
  xxxxxxxxx         { [:NAME, text] }
  {NEWLINE}         { [:NEWLINE] }
  xxxxxxxxx         { [:IO_NUMBER, text.to_i] }
  \&\&              { [:AND_IF] }
  \|\|              { [:OR_IF] }
  \;\;              { [:DSEMI] }
  \<\<              { [:DLESS] }
  \>\>              { [:DGREAT] }
  \<\&              { [:LESSAND] }
  \>\&              { [:GREATAND] }
  \<\>              { [:LESSGREAT] }
  \<\<\-            { [:DLESSDASH] }
  \>\|              { [:CLOBBER] }
  if                { [:If] }
  then              { [:Then] }
  else              { [:Else] }
  elif              { [:Elif] }
  fi                { [:Fi] }
  do                { [:Do] }
  done              { [:Done] }
  case              { [:Case] }
  esac              { [:Esac] }
  while             { [:While] }
  until             { [:Until] }
  for               { [:For] }
  \{                { [:Lbrace] }
  \}                { [:Rbrace] }
  !                 { [:Bang] }
  in                { [:In] }

