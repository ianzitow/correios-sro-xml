lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'correios/sro/version'

Gem::Specification.new do |spec|
  spec.name        = "correios-sro-xml"
  spec.version     = Correios::SRO::VERSION
  spec.authors     = ["Prodis a.k.a. Fernando Hamasaki de Amorim"]
  spec.email       = ["prodis@gmail.com"]
  spec.summary     = "Tracking Objects System from Correios - SRO (Sistema de Rastreamento de Objetos dos Correios)."
  spec.description = "Tracking Objects System from Correios - SRO (Sistema de Rastreamento de Objetos dos Correios), using SRO XML Web Service, that allows to query up to 50 orders simultaneously."
  spec.homepage    = "http://prodis.blog.br/2012/08/17/correios-sro-xml-gem-para-rastreamento-de-objetos-dos-correios"
  spec.licenses    = ["MIT"]

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = Gem::Requirement.new(">= 1.9.3")

  spec.add_dependency "log-me",      "~> 0.0.10"
  spec.add_dependency "nokogiri",    ">= 1.8.1"
  spec.add_dependency "sax-machine", "~> 1.3"

  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec",   "~> 2.14"
  spec.add_development_dependency "vcr",     "~> 2.8"
  spec.add_development_dependency "webmock", "~> 1.15.2"
end
