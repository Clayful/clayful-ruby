Gem::Specification.new do |s|

	s.name        = 'clayful'
	s.version     = '0.0.0'
	s.summary     = 'Ruby SDK for Clayful API'
	s.description = 'Ruby SDK for Clayful API'
	s.authors     = ['Daeik Kim']
	s.email       = ['daeik.kim@clayful.io']
	s.homepage    = 'https://github.com/Clayful/clayful-ruby'
	s.licenses    = ['MIT']

	s.files        = Dir[
		'{lib,test}/**/*',
		'Gemfile',
		'LICENSE',
		'README.md'
	],
	s.require_paths = ['lib']

	s.add_runtime_dependency 'json', '~> 2.1'
	s.add_runtime_dependency 'rest-client', '~> 2.0'

	s.add_development_dependency 'test-unit', '~> 3.2'
	s.add_development_dependency 'fakeweb', '~> 1.3'

end