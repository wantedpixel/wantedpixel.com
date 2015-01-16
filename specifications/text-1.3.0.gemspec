# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{text}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Battley", "Michael Neumann", "Tim Fletcher"]
  s.date = %q{2014-06-23}
  s.description = %q{A collection of text algorithms: Levenshtein, Soundex, Metaphone, Double Metaphone, Porter Stemming}
  s.email = %q{pbattley@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "COPYING.txt"]
  s.files = ["COPYING.txt", "README.rdoc", "Rakefile", "lib/text.rb", "lib/text/double_metaphone.rb", "lib/text/levenshtein.rb", "lib/text/metaphone.rb", "lib/text/porter_stemming.rb", "lib/text/soundex.rb", "lib/text/version.rb", "lib/text/white_similarity.rb", "test/data/double_metaphone.csv", "test/data/metaphone.yml", "test/data/metaphone_buggy.yml", "test/data/porter_stemming_input.txt", "test/data/porter_stemming_output.txt", "test/data/soundex.yml", "test/double_metaphone_test.rb", "test/levenshtein_test.rb", "test/metaphone_test.rb", "test/porter_stemming_test.rb", "test/soundex_test.rb", "test/test_helper.rb", "test/text_test.rb", "test/white_similarity_test.rb"]
  s.homepage = %q{http://github.com/threedaymonk/text}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{text}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A collection of text algorithms}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
