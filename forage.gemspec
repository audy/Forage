Gem::Specification.new do |s|
  s.name = 'forage'
  s.version = '0.0.3'

  s.author = 'Austin G. Davis-Richardson'
  s.email = 'harekrishna@gmail.com'
  s.homepage = 'http://www.github.com/audy/forage'
  s.rubyforge_project = 'forage'
  s.summary = 'Grep for nucleotide data.'
  s.description = 'Forage is grep for nucleotide data. With Forage, you can grep nucleotide sequences in FASTA using the IUPAC ambiguous nucleotides code. Useful for predicting PCR products.'

  s.platform = Gem::Platform::RUBY

  s.files = [
    'bin/forage',
    'lib/forage.rb',
  ]

  s.require_path = 'lib'
  s.bindir = 'bin'

  s.executables = [
    'forage'
  ]

  s.default_executable = 'forage'
end
