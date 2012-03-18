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

    gem "sixarm_ruby_html", "=1.2.0"

Require:

    require "sixarm_ruby_html"


## Install with high security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_html --test --trust-policy HighSecurity


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

## Changes

* 2012-03-17 1.2.0 Upgrade for Ruby 1.9.3, minitest/spec, and improved docs.
* 1.1.0 add files for lists, misc, tables
* 1.0.6 add to gemcutter
* 1.0.5 comment & wrap
* 1.0.4 tables
* 1.0.0 lists

## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2012 Joel Parker Henderson
