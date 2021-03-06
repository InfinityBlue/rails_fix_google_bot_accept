# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_fix_google_bot_accept/version'

Gem::Specification.new do |gem|
  gem.name          = "rails_fix_google_bot_accept"
  gem.version       = RailsFixGoogleBotAccept::VERSION
  gem.authors       = ["Ouvrages", "Romain Champourlier"]
  gem.email         = ["contact@ouvrages-web.fr"]
  gem.description   = %q{Rails fix for Google bot requests}
  gem.summary       = %q{This gem fixes the `ActionView::MissingTemplate` error generated by Rails when a page is requested with the header `Accept: */*;q=0.9` (or any other number).}
  gem.homepage      = "https://github.com/ouvrages/rails_fix_google_bot_accept"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
