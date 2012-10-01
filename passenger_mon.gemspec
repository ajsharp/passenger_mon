# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "passenger_mon"
  s.version     = '0.3.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex Sharp", "Rick Bradley"]
  s.email       = ["ajsharp@gmail.com"]
  s.homepage    = "https://github.com/ajsharp/passenger_mon"
  s.summary     = "Rails process memory monitoring for passenger 3"
  s.description = "When you need to control the memory footprint of your passenger processes"

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = '>= 1.3.6'

  s.extra_rdoc_files = ["README.md", "MIT-LICENSE"]
  s.bindir           = 'bin'
  s.executables      = ['passenger_mon']
end

