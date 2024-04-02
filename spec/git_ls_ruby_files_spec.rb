require "spec_helper"
require "securerandom"
require "tmpdir"
require "tempfile"

RSpec.describe "git-ls-ruby-files" do
  it "works" do
    tempdir = Dir.mktmpdir
    ruby_tempfile = Tempfile.create([SecureRandom.hex, ".rb"], tempdir)
    js_tempfile = Tempfile.create([SecureRandom.hex, ".js"], tempdir)

    Dir.chdir(tempdir) do
      `git init && git add . && git commit -m "test from dorian-git-ls-ruby-files"`

      expect(`git ls-ruby-files`).to include(File.basename(ruby_tempfile))
      expect(`git ls-ruby-files`).to_not include(File.basename(js_tempfile))
    end
  ensure
    File.delete(ruby_tempfile) rescue nil
    File.delete(js_tempfile) rescue nil
    Dir.delete(tempdir) rescue nil
  end
end
