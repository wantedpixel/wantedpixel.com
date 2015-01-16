# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{locale}
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kouhei Sutou", "Masao Mutoh"]
  s.date = %q{2013-12-15}
  s.description = %q{Ruby-Locale is the pure ruby library which provides basic APIs for localization.
}
  s.email = ["kou@clear-code.com", "mutomasa at gmail.com"]
  s.files = ["lib/locale/version.rb", "lib/locale/tag.rb", "lib/locale/tag/cldr.rb", "lib/locale/tag/posix.rb", "lib/locale/tag/common.rb", "lib/locale/tag/simple.rb", "lib/locale/tag/irregular.rb", "lib/locale/tag/rfc.rb", "lib/locale/info/language.rb", "lib/locale/info/region.rb", "lib/locale/driver.rb", "lib/locale/driver/cgi.rb", "lib/locale/driver/posix.rb", "lib/locale/driver/env.rb", "lib/locale/driver/win32.rb", "lib/locale/driver/win32_table.rb", "lib/locale/driver/jruby.rb", "lib/locale/info.rb", "lib/locale/middleware.rb", "lib/locale/data/languages.tab.gz", "lib/locale/data/regions.tab.gz", "lib/locale/taglist.rb", "lib/locale.rb", "samples/cgi/README", "samples/cgi/index.cgi", "samples/cgi/locale.css", "samples/cgi/http.rb", "samples/cgi/cookie.cgi", "samples/rack/README", "samples/rack/locale_rack.rb", "samples/rack/hello_rack.rb", "samples/rack/hello_rack.ru", "samples/sample_1.rb", "samples/sample_info.rb", "COPYING", "ChangeLog", "README.rdoc", "Rakefile", "Gemfile", "locale.gemspec", ".yardopts", "doc/text/news.md", "test/test_tag.rb", "test/test_detect_cgi.rb", "test/test_taglist.rb", "test/test_locale.rb", "test/test_thread.rb", "test/test_info.rb", "test/test_driver_jruby.rb", "test/test_driver_win32.rb", "test/test_detect_general.rb"]
  s.homepage = %q{https://github.com/ruby-gettext/locale}
  s.licenses = ["Ruby", "LGPLv3+"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby-Locale is the pure ruby library which provides basic APIs for localization.}
  s.test_files = ["test/test_tag.rb", "test/test_detect_cgi.rb", "test/test_taglist.rb", "test/test_locale.rb", "test/test_thread.rb", "test/test_info.rb", "test/test_driver_jruby.rb", "test/test_driver_win32.rb", "test/test_detect_general.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<test-unit-notify>, [">= 0"])
      s.add_development_dependency(%q<test-unit-rr>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<test-unit-notify>, [">= 0"])
      s.add_dependency(%q<test-unit-rr>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<test-unit-notify>, [">= 0"])
    s.add_dependency(%q<test-unit-rr>, [">= 0"])
  end
end
