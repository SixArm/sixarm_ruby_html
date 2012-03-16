# SixArm.com » Ruby » <br> HTML utility methods to generate lists, tables, etc.
                   
* Docs: <http://sixarm.com/sixarm_ruby_html/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_html>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

HTML utility methods to generate well-formed HTML for tables, lists, etc.

This is typically to render Ruby objects, such as arrays, as HTML output.

For docs go to <http://sixarm.com/sixarm_ruby_html/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_html

Bundler:

    gem "sixarm_ruby_html", "=1.1.0"

Require:

    require "sixarm_ruby_html"


## Table Methods

* table - Builds an HTML table from the supplied parameters: string CSS: ID, Class; array of strings: Headers, Footers; array of array of string: Rows
* tables - Builds one or more HTML tables from a supplied array of arrays (each sub-array holding the params specified for the table method)
* thead - Builds the thead section of a table from an array of strings
* th - Returns a TH table cell
* ths - Returns a string of TH table cells
* tbody - Builds the tbody section of a table from an array of arrays of strings (each sub-array becomes a table row)
* tr - Returns a TR table row
* trs - Returns a string of TR table rows
* td - Returns a TD table cell
* tds - Returns a string of TD table cells
* tfoot - Builds the tfoot section of a table from an array of strings

## Table Examples

    headers = ['a','b','c']
    footers = ['x','y','z']
    rows=[['d','e,'f']]
    table(:id=>'foo', :class=>'bar', :headers=>headers, :footers=>footers, :rows=>rows)
    =>
    <table id="foo" class="bar">
    <thead>
    <tr>
    <th>a</th>
    <th>b</th>
    <th>c</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td>d</td>
    <td>e</td>
    <td>f</td>
    </tr>
    </tbody>
    <tfoot>
    <tr>
    <th>x</th>
    <th>y</th>
    <th>z</th>
    </tr>
    </tfoot>
    </table>


## List Methods

* ul - Builds an HTML unordered list from an array of strings or Enumerables
* uls - Builds one or more HTML unordered lists from an array of arrays of strings or Enumerables (sub-arrays can be a mix of both)
* li - Returns an LI item
* lis - Returns a string of LI items


## List Examples

    ul(['a','b','c']) =>
    <ul><li>a</li><li>b</li><li>c</li></ul>

    uls(['a','b','c'],['d','e','f'],[1,2,3]) =>
    <ul><li>a</li><li>b</li><li>c</li></ul><ul><li>d</li><li>e</li><li>f</li></ul><ul><li>1</li><li>2</li><li>3</li></ul>


## Misc Methods

* comment - Return the text parameter wrapped in an HTML comment
* wrap - Return the text parameter wrapped in a tag pair


## Misc Examples

    comment('the following comes from') =>
    <!-- the following comes from -->

    wrap('foo', 'bar') =>
    <bar>foo</bar>

