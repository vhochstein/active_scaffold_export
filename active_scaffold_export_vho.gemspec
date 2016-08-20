# -*- encoding: utf-8 -*-
require 'active_scaffold_export/version'

Gem::Specification.new do |s|
  s.name = %q{active_scaffold_export_vho}
  s.version = ActiveScaffoldExport::Version::STRING
  s.platform = Gem::Platform::RUBY
  s.authors = ["Volker Hochstein"]
  s.date = %q{2012-02-11}
  s.description = %q{Exporting Records with ActiveScaffold}
  s.email = %q{activescaffold@googlegroups.com}
  s.extra_rdoc_files = [
      "README"
  ]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.homepage = %q{http://github.com/vhochstein/active_scaffold_export}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.summary = %q{Exporting Records with ActiveScaffold}

  s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
  s.add_runtime_dependency(%q<active_scaffold_vho>, [">= 3.1.2"])
  s.add_development_dependency(%q<simplecov>, ["~> 0.9.0"])

end

