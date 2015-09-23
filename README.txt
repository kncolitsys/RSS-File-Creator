Application: RSS file creator
--------------------------------------------------------------------------------------------

Everyone seems to be making RSS readers but I so rarely see applications that allow you 
to easily build an RSS feed.  Expecially one in ColdFusion that could easily be modified.

CONFIGURATION
This application is pretty simple. All variable settings can be made to the top section 
of the [writeXmlFeed.cfm] file.  I decided not to do this in an Application.cfm or .cfc 
file since most people will be adding this to a directory that already has one of these 
files so making it self contained seemed to make things easier.
We build the RSS feed list with the following variables:

- pubDate
- feedTitle
- feedLink
- feedDescription

Each of these fields are using the same field name in the database.  In the beginning of 
the [writeXmlFeed.cfm] file in the configuration area you can rename them (on the right side)
to fit your naming convention in your data-table.  If you dont have a database in place 
already then feel free to use the Access database included in this zip file.

Make sure you update the path to the final rss xml file that will be writen.  The variable is
[xmlFileName] which is also located in the [writeXmlFeed.cfm] document.  Also in the top part
of this document you can set your database variables if you are using another database.

CONTACT
If you have any questions feel free to email me at software@underlinemedia.com and be sure to
put 'RSS File Creator' in the subject line so I dont overlook it.

Now all the legal stuff...

--------------------------------------------------------------------------------------------
	
	This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

