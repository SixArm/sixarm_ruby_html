# -*- coding: utf-8 -*-
require 'test/unit'

['lists','misc','tables'].map{|x|
  require "sixarm_ruby_html/#{x}_test.rb"
}




