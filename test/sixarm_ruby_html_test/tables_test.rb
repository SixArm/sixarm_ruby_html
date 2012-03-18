# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'sixarm_ruby_html'

describe HTML do

  include HTML

  before do
    CELLS ||= ['a','b','c']
    ROWS ||= [['a','b','c'],['d','e','f'],['g','h','i']]
  end

  it "#td" do
    td('a').must_equal "<td>a</td>\n"
  end

  it "#tds" do
    tds(CELLS).must_equal "<td>a</td>\n<td>b</td>\n<td>c</td>\n"
  end

  it "#tr" do
    tr(CELLS).must_equal "<tr>\n<td>a</td>\n<td>b</td>\n<td>c</td>\n</tr>\n"
  end

  it "#trs" do
    trs(ROWS).must_equal "<tr>\n<td>a</td>\n<td>b</td>\n<td>c</td>\n</tr>\n<tr>\n<td>d</td>\n<td>e</td>\n<td>f</td>\n</tr>\n<tr>\n<td>g</td>\n<td>h</td>\n<td>i</td>\n</tr>\n"
  end

  it "#tbody" do
    tbody(ROWS).must_equal "<tbody>\n<tr>\n<td>a</td>\n<td>b</td>\n<td>c</td>\n</tr>\n<tr>\n<td>d</td>\n<td>e</td>\n<td>f</td>\n</tr>\n<tr>\n<td>g</td>\n<td>h</td>\n<td>i</td>\n</tr>\n</tbody>\n"
  end

  it "#ths" do
    ths(CELLS).must_equal "<th>a</th>\n<th>b</th>\n<th>c</th>\n"
  end

  it "#thead" do
    thead(CELLS).must_equal "<thead>\n<tr>\n<th>a</th>\n<th>b</th>\n<th>c</th>\n</tr>\n</thead>\n"
  end

  it "#tfoot" do
    tfoot(CELLS).must_equal "<tfoot>\n<tr>\n<th>a</th>\n<th>b</th>\n<th>c</th>\n</tr>\n</tfoot>\n"
  end

  it "#table_text" do
    table(:text=>'foo').must_equal "<table>\nfoo</table>\n"
  end

  it "#table_text_and_attrs" do
    table(:id=>'foo',:class=>'bar',:text=>'foo').must_equal "<table id=\"foo\" class=\"bar\">\nfoo</table>\n"
  end

  it "#tables" do
    tables(:texts=>['foo','bar']).must_equal "<table>\nfoo</table>\n<table>\nbar</table>\n"
  end

  it "#table_headers_body_footers" do
    table(:headers=>CELLS,:rows=>ROWS,:footers=>CELLS).must_equal \
      "<table>\n"+
      "<thead>\n<tr>\n<th>a</th>\n<th>b</th>\n<th>c</th>\n</tr>\n</thead>\n"+
      "<tbody>\n<tr>\n<td>a</td>\n<td>b</td>\n<td>c</td>\n</tr>\n<tr>\n<td>d</td>\n<td>e</td>\n<td>f</td>\n</tr>\n<tr>\n<td>g</td>\n<td>h</td>\n<td>i</td>\n</tr>\n</tbody>\n"+
      "<tfoot>\n<tr>\n<th>a</th>\n<th>b</th>\n<th>c</th>\n</tr>\n</tfoot>\n"+
      "</table>\n"
  end

end



