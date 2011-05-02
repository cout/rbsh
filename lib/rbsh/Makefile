all: shell.tab.rb shell.rex.rb

shell.tab.rb: shell.racc
	racc -t $< -o $@

shell.rex.rb: shell.rex
	rex $< -o $@

