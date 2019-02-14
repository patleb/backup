# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require "ext_backup/version"

Gem::Specification.new do |gem|
  gem.name        = "ext_backup"
  gem.version     = ExtBackup::VERSION
  gem.authors     = ["Michael van Rooijen"]
  gem.email       = ["meskyanichi@gmail.com"]
  gem.homepage    = "https://github.com/patleb/ext_backup"
  gem.license     = "MIT"
  gem.summary     = "Provides an elegant DSL in Ruby for performing backups "\
    "on UNIX-like systems."
  gem.description = <<-EOS.gsub(/\s+/, " ").strip
    Backup is a RubyGem, written for UNIX-like operating systems, that allows
    you to easily perform backup operations on both your remote and local
    environments. It provides you with an elegant DSL in Ruby for modeling your
    backups.  Backup has built-in support for various databases, storage
    protocols/services, syncers, compressors, encryptors and notifiers which
    you can mix and match. It was built with modularity, extensibility and
    simplicity in mind.
  EOS

  gem.files = `git ls-files -- lib bin templates README.md LICENSE`.split("\n")
  gem.require_path  = "lib"
  gem.executables   = ["backup"]

  gem.required_ruby_version = ">= 2.0"

  gem.add_dependency "thor"
  gem.add_dependency "open4"
  gem.add_dependency "ext_fog_aws"
  gem.add_dependency "excon"
  gem.add_dependency "net-ssh"
  gem.add_dependency "net-scp"
  gem.add_dependency "net-sftp"
  gem.add_dependency "mail"
  gem.add_dependency "nokogiri"

  gem.add_development_dependency "fog", "~> 2.0"
  gem.add_development_dependency "dropbox-sdk", "1.6.5"
  gem.add_development_dependency "pagerduty", "2.0.0"
  gem.add_development_dependency "twitter", "~> 5.5"
  gem.add_development_dependency "hipchat", "1.0.1"
  gem.add_development_dependency "flowdock", "0.4.0"
  gem.add_development_dependency "dogapi", "1.11.0"
  gem.add_development_dependency "aws-sdk-ses", "~> 1.4"
  gem.add_development_dependency "qiniu", "~> 6.5"

  gem.add_development_dependency "rubocop", "0.48.1"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "3.5.0"
  gem.add_development_dependency "mocha", "0.14.0"
  gem.add_development_dependency "timecop", "0.7.1"
end
