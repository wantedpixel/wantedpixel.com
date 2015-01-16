# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{compass-import-once}
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Eppstein"]
  s.date = %q{2014-08-04}
  s.description = %q{Changes the behavior of Sass's @import directive to only import a file once.}
  s.email = ["chris@eppsteins.net"]
  s.files = [".gitignore", "Gemfile", "Gemfile_sass_3_2", "LICENSE.txt", "README.md", "Rakefile", "VERSION", "compass-import-once.gemspec", "lib/compass-import-once.rb", "lib/compass/import-once.rb", "lib/compass/import-once/activate.rb", "lib/compass/import-once/engine.rb", "lib/compass/import-once/importer.rb", "lib/compass/import-once/version.rb", "test/diff_as_string.rb", "test/fixtures/_simple_partial.scss", "test/fixtures/basic.css", "test/fixtures/basic.scss", "test/fixtures/force_import.css", "test/fixtures/force_import.scss", "test/fixtures/with_globbing.css", "test/fixtures/with_globbing.scss", "test/import_once_test.rb", "test/test_helper.rb"]
  s.homepage = %q{https://github.com/chriseppstein/compass/tree/master/import-once}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Speed up your Sass compilation by making @import only import each file once.}
  s.test_files = ["test/diff_as_string.rb", "test/fixtures/_simple_partial.scss", "test/fixtures/basic.css", "test/fixtures/basic.scss", "test/fixtures/force_import.css", "test/fixtures/force_import.scss", "test/fixtures/with_globbing.css", "test/fixtures/with_globbing.scss", "test/import_once_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>, [">= 3.2", "< 3.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<diff-lcs>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sass-globbing>, [">= 0"])
    else
      s.add_dependency(%q<sass>, [">= 3.2", "< 3.5"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<diff-lcs>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sass-globbing>, [">= 0"])
    end
  else
    s.add_dependency(%q<sass>, [">= 3.2", "< 3.5"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<diff-lcs>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sass-globbing>, [">= 0"])
  end
end
