# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'rails/multi_block_helpers/version'

Gem::Specification.new do |s|
  s.name          = "rails-multi_block_helpers"
  s.version       = Rails::MultiBlockHelpers::VERSION
  s.authors       = ["stevo"]
  s.email         = ["b.kosmowski@selleo.com"]
  s.homepage      = "https://github.com/Selleo/rails-multi_block_helpers"
  s.summary       = "Gem allows defining helpers that accept multiple blocks"
  s.description   = "Gem allows defining helpers that accept multiple blocks"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
end
