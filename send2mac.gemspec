# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'send2mac/version'

Gem::Specification.new do |spec|
  spec.name          = "send2mac"
  spec.version       = Send2MacClient::VERSION
  spec.authors       = ["Nick Prokesch"]
  spec.email         = ["nick@prokes.ch"]
  spec.summary       = %q{a ruby client for Send2Mac}
  spec.description   = %q{A client for Send2Mac. Automatically launches received URLs in the default browser}
  spec.homepage      = "https://github.com/prokizzle/send2mac-client-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths    = ["lib"]
  spec.bindir = 'bin'
  spec.executables << 'send2mac'

  spec.add_dependency "launchy", "~> 2.3"
  spec.add_dependency "mechanize", "~> 2.7"
  spec.add_dependency "daemons", "~> 1.1"
  spec.add_dependency "highline", "~> 1.6"
end