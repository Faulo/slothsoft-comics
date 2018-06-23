<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">	<xsl:template match="/*">		<html>			<head>				<title>					Slothsoft Comic Mirror -					<xsl:value-of select="//comic/@name" />				</title>				<style type="text/css"><![CDATA[html {	background: black;	color: white;}body {	margin: 0;}details {	background-color: #080;}details > summary {	font-weight: bold;	padding: 0.5em;}ul {	margin: 0;	padding: 0;}li {	display: inline-table;	margin: 0.5em;	padding: 0;	border: 1px solid silver;	vertical-align: top;	background: black;	table-layout: fixed;}li > a {	display: table-cell;	vertical-align: middle;	text-align: center;}li > a:first-child {	width: 64px;	height: 64px;	overflow: hidden;}li > a:last-child {	width: 196px;}.toc-title {	display: block;	height: 64px;	overflow: hidden;}img {	display: block;	margin: auto;}h1, h2 {	text-align: center;}			]]></style>			</head>			<body>				<!-- <details> <summary>Table of Contents</summary> <ul> <xsl:for-each select=".//page"> <li> <a href="{@href}"><img 					src="{@thumb}" alt="{@href}"/></a> <a href="#page-{@key}"><span class="toc-title"><xsl:value-of select="@title"/></span></a> 					</li> </xsl:for-each> </ul> </details> -->				<xsl:for-each select=".//comic">					<h1>						<xsl:value-of select="@name" />					</h1>					<xsl:for-each select="page[not(@hidden)]">						<article id="page-{@key}">							<h2>								<a href="{@href}" target="_blank">									<xsl:value-of select="@title" />								</a>								<xsl:text> </xsl:text>								<a href="#page-{@key}">🔖</a>							</h2>							<img src="{@image}" alt="{@href}" width="{@width}" height="{@height}" />						</article>					</xsl:for-each>				</xsl:for-each>			</body>		</html>	</xsl:template></xsl:stylesheet>