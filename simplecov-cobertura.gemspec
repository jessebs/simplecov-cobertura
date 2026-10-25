# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'simplecov-cobertura/version'

Gem::Specification.new do |spec|
  spec.name = 'simplecov-cobertura'
  spec.version = SimpleCov::Formatter::CoberturaFormatter::VERSION
  spec.authors = ['Jesse Bowes']
  spec.email = ['jessebowes@acm.org']
  spec.summary = 'SimpleCov Cobertura Formatter'
  spec.description = 'Produces Cobertura XML formatted output from SimpleCov'
  spec.homepage = 'https://github.com/jessebs/simplecov-cobertura'
  spec.license = 'Apache-2.0'
  spec.required_ruby_version = '>= 3.2'
  spec.metadata = { 'rubygems_mfa_required' => 'true' }

  spec.files = `git ls-files -z lib LICENSE README.md`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_development_dependency 'test-unit', '~> 3.2'
  spec.add_development_dependency 'nokogiri', '~> 1.0'
  spec.add_development_dependency 'rake', '~> 13.0'

  spec.add_dependency 'simplecov', '~> 1.0'
  spec.add_dependency 'rexml'
end
