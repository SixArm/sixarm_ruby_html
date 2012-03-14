Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_html"
  s.summary           = "SixArm.com » Ruby » HTML helpers for tables, headers, rows, cells, lists, etc."
  s.version           = "1.1.0"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true

  SOURCES             = ['lists','misc','tables']
  TESTERS             = []

  s.files             = HELP_FILES + MAIN_FILES + TEST_FILES + DATA_FILES
  s.test_files        = TEST_FILES + DATA_FILES

end
