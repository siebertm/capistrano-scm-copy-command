# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/scm_copy_command/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-scm-copy-command'
  spec.version       = Capistrano::ScmCopyCommand::VERSION
  spec.authors       = ['Michael Siebert', 'Max Meyer']
  spec.email         = ['siebertm85@googlemail.com', 'dev@fedux.org']
  spec.summary       = 'General "I have a command which generates things" deploy strategy for capistrano'
  spec.homepage      = 'https://github.com/siebertm/capistrano-scm_copy_command'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'

  spec.add_runtime_dependency 'capistrano', '~> 3'
  spec.add_runtime_dependency 'rubyzip', '~>1.1.7'
end
