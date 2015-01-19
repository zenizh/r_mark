$:.push File.expand_path('../lib', __FILE__)

require 'r_mark/version'

Gem::Specification.new do |s|
  s.name        = 'r_mark'
  s.version     = RMark::VERSION
  s.authors     = ['kami']
  s.email       = ['kami30k@gmail.com']
  s.homepage    = 'https://github.com/kami30k/r_mark'
  s.summary     = 'Render markdown in Rails views or partials.'
  s.description = 'Render markdown in Rails views or partials.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2.0'

  s.add_development_dependency 'redcarpet'
  s.add_development_dependency 'rdiscount'
  s.add_development_dependency 'kramdown'
end
