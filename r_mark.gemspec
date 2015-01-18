$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "r_mark/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "r_mark"
  s.version     = RMark::VERSION
  s.authors     = ["kami"]
  s.email       = ["kami30k@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RMark."
  s.description = "TODO: Description of RMark."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
