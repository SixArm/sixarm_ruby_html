# -*- coding: utf-8 -*-
require 'simplecov'
SimpleCov.start
require 'test/unit'
require 'sixarm_ruby_html'

['lists','misc','tables'].map{|x|
  require "sixarm_ruby_html/#{x}_test.rb"
}




