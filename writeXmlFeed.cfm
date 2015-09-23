<!--- -------------------------------------------------------------------- --->
<!--- Application: RSS file creator                                        --->
<!--- Author: Micah C Brown                                                --->
<!--- Contact:software@underlinemedia.com                                  --->
<!--- Date: 10/20/2007                                                     --->
<!--- Version: 1.1                                                         --->
<!--- -------------------------------------------------------------------- --->

<!--- Type in the direct path to the file being writen.                    --->
<cfset xmlFileName = "c:\InetPub\wwwroot\test\RSS\rssFeed.xml">
<cfset dbName = "RSS_db">
<cfset dbMainTable = "Content">
<cfset dbUsername = "">
<cfset dbPassword = "">

<!--- Customize your database field name if needed. Set the field name you --->
<!--- use on the RIGHT side of the <cfset> statements below.               --->
<cfset dtPubDate = "dtPubDate">
<cfset varTitle = "varTitle">
<cfset varLink = "varLink">
<cfset varDescription = "varDescription">

<!--- Enter default settings in these variable if you dont want to fill    --->
<!--- them out every time on the index.cfm page.                           --->
<cfparam name="nameSpace" default="http://www.underlinemedia.com">
<cfparam name="feedTitle" default="RSS Feed">
<cfparam name="feedLink" default="http://www.underlinemedia.com">
<cfparam name="feedDescription" default="Web, database and application development.">
<cfparam name="maxRows" default="3">

<!--- Database query. If you want to customize it to query your database --->
<!--- you can rewrite this whole query and you should be fine. Just keep --->
<!--- the four select variable the same.  Change the name in the <cfset> --->
<!--- section above and you will be fine.                                --->
<cfquery name="rssSelect" datasource="#dbName#" username="#dbUsername#" password="#dbPassword#" maxrows="#maxRows#">
select #dtPubDate#,#varTitle#,#varLink#,#varDescription#
from #dbMainTable#
</cfquery>

<!--- -------------------------------------------------------------------- --->
<!--- -------------------------------------------------------------------- --->




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="RSSstyle.css" />
<title>RSS File Creator</title>
</head>

<body>
<cfsavecontent variable="tempVar"><?xml version="1.0" encoding="ISO-8859-1" ?>
<cfoutput><rss version="2.0"<cfif nameSpace neq ""> xmlns:media="#nameSpace#"</cfif>>
<channel>
<title>#feedTitle#</title>
<link>#feedLink#</link>
<description>#feedDescription#</description></cfoutput>
<cfoutput query="rssSelect">
<item>
<pubDate>#dtPubDate#</pubDate>
	<title>#varTitle#</title>
	<link>#varLink#</link>
	<description>#varDescription#</description>
</item></cfoutput>
</channel>
</cfsavecontent>

<cffile action="write" file="#xmlFileName#" output="#tempVar#">


<table width="700" border="0">
  <tr>
    <td><h1>RSS File Creator</h1></td>
  </tr>
  <tr>
    <td><p align="center"><br />
      <br />
          <span class="style1">Your RSS feed has been updated. </span></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
	<cfoutput><pre>#tempVar#</pre></cfoutput>
	</td>
	</tr>
	  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="698" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td valign="top"><div align="left">2007 &copy; Copyright - <a href="http://www.underlinemedia.com" target="_blank">UnderlineMedia</a></div></td>
          <td valign="top"><div align="right">Version 1.1 [<a href="http://www.underlinemedia.com/freeApplications.php">update</a>]<br />
		  [donate[</div></td>
        </tr>
      </table></td>
  </tr>
</table>	
</body>
</html>