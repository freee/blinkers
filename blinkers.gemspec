$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blinkers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blinkers"
  s.version     = Blinkers::VERSION
  s.authors     = ["Junichi Kaku"]
  s.email       = ["kaku@freee.co.jp"]
  s.homepage    = "https://github.com/freee/blinkers"
  s.summary     = "A Rails plugin to handle sensitive data securely."
  s.description = "Provides secure_params that converts sensitive data to [FILTERED]. And send [FILTERED] data to error monitoring sevices."
  s.license     = "MIT"

  s.files = Dir["{config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "> 4.1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
