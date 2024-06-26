# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-git-ls-ruby-files"
  s.version = "0.1.6"
  s.summary = "List Tuby files checked in Git"
  s.description = "#{s.summary}\n\ne.g. `git ls-ruby-files`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/git-ls-ruby-files"]
  s.executables << "git-ls-ruby-files"
  s.homepage = "https://github.com/dorianmariecom/dorian-git-ls-ruby-files"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "git", "~> 1"

  s.required_ruby_version = ">= 3.3.0"
end
