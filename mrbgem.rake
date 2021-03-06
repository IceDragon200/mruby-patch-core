MRuby::Gem::Specification.new('mruby-patch-core') do |spec|
  spec.license = 'MIT'
  spec.authors = ['Corey Powell']
  spec.version = '1.1.0'
  spec.summary = 'Monkey patching for some missing mruby features.'
  spec.description = 'Monkey patching for some missing mruby features.'
  spec.homepage = 'https://github.com/IceDragon200/mruby-patch-core'
  spec.add_dependency 'mruby-string-ext'
  spec.add_dependency 'mruby-time'
  spec.add_dependency 'mruby-sprintf'
end
