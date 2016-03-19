require 'erb'
require 'dotenv'
require 'pathname'

DIR = Pathname.new(File.dirname(__FILE__))

Dotenv.load

erb = ERB.new(File.read(DIR.join('user-data.sh.erb')))
File.write(DIR.join('user-data.sh'), erb.result(binding))
