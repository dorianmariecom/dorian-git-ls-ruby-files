# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-git-ls-ruby-files"
  s.version = File.read("VERSION").strip
  s.summary = "list ruby files in git"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/git-ls-ruby-files"]
  s.executables << "git-ls-ruby-files"
  s.homepage = "https://github.com/dorianmariecom/dorian-git-ls-ruby-files"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "dorian-arguments", ">= 2.0.1", "< 3"
  s.add_dependency "git", ">= 5.4.1", "< 6"
  s.required_ruby_version = ">= 4.0"
end
