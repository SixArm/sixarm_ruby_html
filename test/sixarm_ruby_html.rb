require 'test/unit'

['lists','misc','tables'].map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_html/#{x}_test.rb"
}




