# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'sixarm_ruby_html'

describe HTML do

  include HTML

  before do
    ITEM ||= 'a'
    ITEMS ||= ['a','b','c']
  end

  it "#li" do
    li(ITEM).must_equal "<li>a</li>\n"
  end

  it "#lis" do
    lis(ITEMS).must_equal "<li>a</li>\n<li>b</li>\n<li>c</li>\n"
  end

  it "#ul" do
    ul(ITEMS).must_equal "<ul>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n</ul>\n"
  end

  it "#uls" do
    uls([ITEMS,ITEMS]).must_equal "<ul>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n</ul>\n<ul>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n</ul>\n"
  end

end



