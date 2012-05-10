# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "taipeiHotel/version"

Gem::Specification.new do |s|
  s.name        = "taipeiHotel"
  s.version     = TaipeiHotel::VERSION
  s.authors     = ["joehwang"]
  s.email       = ["joehwang.com@gmail.com"]
  s.homepage    = ""
s.summary = %q{ The ruby gem adapter Hotel location api of Taipei City Government. }
s.description = %q{ The ruby gem adapter Hotel location api of Taipei City Government. }
  s.rubyforge_project = "taipeiHotel"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
