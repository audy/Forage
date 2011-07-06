Gem::Specification.new do |s|
  s.name = 'forage'
  s.version = '0.0.1'

  s.author = 'Austin G. Davis-Richardson'
  s.email = 'harekrishna@gmail.com'
  s.homepage = 'http://www.github.com/audy/forage'
  s.rubyforge_project = 'forage'
  s.summary = 'grep for nucleotide data'

  s.platform = Gem::Platform::RUBY

  s.files = [
    'bin/forage',
  ]

  s.bindir = 'bin'

  s.executables = [
    'forage'
  ]

  s.default_executable = 'forage'
end
