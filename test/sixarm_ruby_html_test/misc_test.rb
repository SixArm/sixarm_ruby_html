# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'sixarm_ruby_html'

describe HTML do

  include HTML

  it "#comment" do
    comment('a').must_equal "<!--a-->"
  end

  it "#wrap" do
    wrap('a','<b>').must_equal "<b>a</b>"
    wrap('a','b').must_equal "<b>a</b>"
    wrap('a','b c d e').must_equal "<b c d e>a</b>"
  end

end



