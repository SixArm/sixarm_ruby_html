# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_html"
  s.summary           = "SixArm.com » Ruby » HTML helpers"
  s.summary           = "HTML helpers for tables, headers, rows, cells, lists, etc."
  s.version           = "1.2.1"

  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.licenses          = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key       = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain        = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform          = Gem::Platform::RUBY
  s.require_path      = "lib"
  s.has_rdoc          = true

  s.files = [
    ".gemtest",
    "Rakefile",
    "README.md",
    "VERSION",
    "lib/sixarm_ruby_html.rb",
    "lib/sixarm_ruby_html/lists.rb",
    "lib/sixarm_ruby_html/misc.rb",
    "lib/sixarm_ruby_html/tables.rb",
  ]


  s.test_files = [
    "test/sixarm_ruby_html_test.rb",
    "test/sixarm_ruby_html_test/lists_test.rb",
    "test/sixarm_ruby_html_test/misc_test.rb",
    "test/sixarm_ruby_html_test/tables_test.rb",
  ]

end
