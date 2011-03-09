# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "passenger_mon"
  s.version = '0.1.0'
  s.platform = Gem::Platform::RUBY
  s.authors = ["Alex Sharp", "Rick Bradley"]
  s.email = ["ajsharp@gmail.com"]
  s.homepage = "http://github.com/ajsharp/passenger_mon"
  s.summary = "Rails process monitoring for passenger 3"
  s.description = "Need to control the memory footprint of your passenger processes. You need passenger_mon, bro."

  s.extra_rdoc_files = ["README"]
  s.executables = ['passenger_mon']
end

