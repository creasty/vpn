user-data.sh: user-data.sh.erb
	ruby make.rb

build: user-data.sh
