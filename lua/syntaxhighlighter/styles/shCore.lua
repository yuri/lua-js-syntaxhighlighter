module(...)
content = [=========================[
/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/wiki/SyntaxHighlighter:Donate
 *
 * @version
 * 2.0.320 (May 03 2009)
 * 
 * @copyright
 * Copyright (C) 2004-2009 Alex Gorbatchev.
 *
 * @license
 * This file is part of SyntaxHighlighter.
 * 
 * SyntaxHighlighter is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * SyntaxHighlighter is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with SyntaxHighlighter.  If not, see <http://www.gnu.org/copyleft/lesser.html>.
 */
.syntaxhighlighter,
.syntaxhighlighter div,
.syntaxhighlighter code,
.syntaxhighlighter span
{
	margin: 0 !important;
	padding: 0 !important;
	border: 0 !important;
	outline: 0 !important;
	background: none !important;
	text-align: left !important;
	float: none !important;
	vertical-align: baseline !important;
	position: static !important;
	left: auto !important;
	top: auto !important;
	right: auto !important;
	bottom: auto !important;
	height: auto !important;
	width: auto !important;
	line-height: 1.1em !important;
	font-family: "Consolas", "Monaco", "Bitstream Vera Sans Mono", "Courier New", Courier, monospace !important;
	font-weight: normal !important;
	font-style: normal !important;
	font-size: 1em !important;
}

.syntaxhighlighter
{
	width: 100% !important;
	margin: 1em 0 1em 0 !important;
	padding: 1px !important; /* adds a little border on top and bottom */
	position: relative !important;
}

.syntaxhighlighter code {
	display: inline !important;
}

.syntaxhighlighter .bold {
	font-weight: bold !important;
}

.syntaxhighlighter .italic {
	font-style: italic !important;
}

.syntaxhighlighter .line .number
{
	float: left !important; 
	width: 3em !important; 
	padding-right: .3em !important;
	text-align: right !important;
	display: block !important;
}

/* Disable numbers when no gutter option is set */
.syntaxhighlighter.nogutter .line .number
{
	display: none !important;
}

.syntaxhighlighter .line .content
{
	margin-left: 3.3em !important; 
	padding-left: .5em !important;
	display: block !important;
}

.syntaxhighlighter .line .content .block
{
	display: block !important;
	padding-left: 1.5em !important;
	text-indent: -1.5em !important;
}

.syntaxhighlighter .line .content .spaces
{
	display: none !important;
}

/* Disable border and margin on the lines when no gutter option is set */
.syntaxhighlighter.nogutter .line .content
{
	margin-left: 0 !important; 
	border-left: none !important;
}

.syntaxhighlighter .bar
{
	display: none !important;
}

.syntaxhighlighter .bar.show 
{
	display: block !important;
}

.syntaxhighlighter.collapsed .bar
{
	display: block !important;
}

.syntaxhighlighter.nogutter .ruler
{
	margin-left: 0 !important;
	padding-left: 0 !important;
}

.syntaxhighlighter .ruler
{
	padding: 0 0 .5em .5em !important;
	margin-left: 3.3em !important;
	overflow: hidden !important;
}

/* Adjust some properties when collapsed */

.syntaxhighlighter.collapsed .lines,
.syntaxhighlighter.collapsed .ruler
{
	display: none !important;
}

.syntaxhighlighter .lines.no-wrap
{
	overflow: auto;
	overflow-y: hidden;
}

/* Styles for the toolbar */

.syntaxhighlighter .toolbar
{
	position: absolute !important;
	right: 0px !important;
	top: 0px !important;
	font-size: 1px !important;
	padding: 8px 8px 8px 0 !important; /* in px because images don't scale with ems */
}

.syntaxhighlighter.collapsed .toolbar
{
	font-size: 80% !important;
	padding: .2em 0 .5em .5em !important;
	position: static !important;
}

.syntaxhighlighter .toolbar a.item,
.syntaxhighlighter .toolbar .item
{
	display: block !important;
	float: left !important;
	margin-left: 8px !important;
	background-repeat: no-repeat !important;
	overflow: hidden !important;
	text-indent: -5000px !important;
}

.syntaxhighlighter.collapsed .toolbar .item
{
	display: none !important;
}

.syntaxhighlighter.collapsed .toolbar .item.expandSource
{
	background-image: url(magnifier.png) !important;
	display: inline !important;
	text-indent: 0 !important;
	width: auto !important;
	float: none !important;
	height: 16px !important;
	padding-left: 20px !important;
}

.syntaxhighlighter .toolbar .item.viewSource
{
	background-image: url(page_white_code.png) !important;
}

.syntaxhighlighter .toolbar .item.printSource
{
	background-image: url(printer.png) !important;
}

.syntaxhighlighter .toolbar .item.copyToClipboard
{
	text-indent: 0 !important;
	background: none !important;
	overflow: visible !important;
}

.syntaxhighlighter .toolbar .item.about
{
	background-image: url(help.png) !important;
}

/** 
 * Print view.
 * Colors are based on the default theme without background.
 */

.syntaxhighlighter.printing,
.syntaxhighlighter.printing .line.alt1 .content,
.syntaxhighlighter.printing .line.alt2 .content,
.syntaxhighlighter.printing .line.highlighted .number,
.syntaxhighlighter.printing .line.highlighted.alt1 .content,
.syntaxhighlighter.printing .line.highlighted.alt2 .content,
.syntaxhighlighter.printing .line .content .block
{
	background: none !important;
}

.syntaxhighlighter .no-wrap .line .content .block
{
	white-space: nowrap !important;
}

/* Gutter line numbers */
.syntaxhighlighter.printing .line .number
{
	color: #bbb !important;
}

/* Add border to the lines */
.syntaxhighlighter.printing .line .content
{
	color: #000 !important;
}

/* Toolbar when visible */
.syntaxhighlighter.printing .toolbar,
.syntaxhighlighter.printing .ruler
{
	display: none !important;
}

.syntaxhighlighter.printing a
{
	text-decoration: none !important;
}

.syntaxhighlighter.printing .plain,
.syntaxhighlighter.printing .plain a
{ 
	color: #000 !important;
}

.syntaxhighlighter.printing .comments,
.syntaxhighlighter.printing .comments a
{ 
	color: #008200 !important;
}

.syntaxhighlighter.printing .string,
.syntaxhighlighter.printing .string a
{
	color: blue !important; 
}

.syntaxhighlighter.printing .keyword
{ 
	color: #069 !important; 
	font-weight: bold !important; 
}

.syntaxhighlighter.printing .preprocessor 
{ 
	color: gray !important; 
}

.syntaxhighlighter.printing .variable 
{ 
	color: #a70 !important; 
}

.syntaxhighlighter.printing .value
{ 
	color: #090 !important; 
}

.syntaxhighlighter.printing .functions
{ 
	color: #ff1493 !important; 
}

.syntaxhighlighter.printing .constants
{ 
	color: #0066CC !important; 
}

.syntaxhighlighter.printing .script
{
	font-weight: bold !important;
}

.syntaxhighlighter.printing .color1,
.syntaxhighlighter.printing .color1 a
{ 
	color: #808080 !important; 
}

.syntaxhighlighter.printing .color2,
.syntaxhighlighter.printing .color2 a
{ 
	color: #ff1493 !important; 
}

.syntaxhighlighter.printing .color3,
.syntaxhighlighter.printing .color3 a
{ 
	color: red !important; 
}
]=========================]
