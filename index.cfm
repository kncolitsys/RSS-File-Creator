<!--- -------------------------------------------------------------------- --->
<!--- Application: RSS file creator                                        --->
<!--- Author: Micah C Brown                                                --->
<!--- Contact:software@underlinemedia.com                                  --->
<!--- Date: 10/20/2007                                                     --->
<!--- Version: 1.1                                                         --->
<!--- -------------------------------------------------------------------- --->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="RSSstyle.css" />

<title>RSS File Creator</title>
</head>

<body>
<table width="700" border="0">
  <tr>
    <td><h1>RSS File Creator </h1></td>
  </tr>
  <tr>
    <td><form id="form1" name="form1" method="post" action="writeXmlFeed.cfm">
      <table width="698" border="0" cellspacing="2" cellpadding="2">
        <tr valign="top">
          <td colspan="2"><p class="style1">Set values</p>		  </td>
          </tr>
        <tr>
          <td width="137" valign="top"><div align="right">RSS Site  Title</div></td>
          <td width="547" valign="top"><input name="feedTitle" type="text" id="feedTitle" size="70" maxlength="255" /></td>
        </tr>
        <tr>
          <td valign="top"><div align="right">RSS Site Description </div></td>
          <td valign="top"><textarea name="feedDescription" cols="54" rows="3" wrap="virtual" id="feedDescription"></textarea></td>
        </tr>
        <tr>
          <td valign="top"><div align="right">Site Link </div></td>
          <td valign="top"><input name="feedLink" type="text" id="feedLink" size="70" maxlength="255" value="http://" /></td>
        </tr>
        <tr>
          <td valign="top"><div align="right">Namespace</div></td>
          <td valign="top"><input name="nameSpace" type="text" id="nameSpace" size="70" maxlength="255" value="http://" /></td>
        </tr>
        <tr>
          <td valign="top"><div align="right">Rows to return </div></td>
          <td valign="top"><p>
            <select name="maxRows">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5" selected="selected">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
            </select>
          </p>            </td>
        </tr>
        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top"><p>
            <input type="submit" name="Submit" value="Submit" />
          </p>
            <p></p></td>
        </tr>
      </table>
        </form>
    </td>
  </tr>
  <tr>
    <td><table width="698" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td valign="top"><div align="left">2007 &copy; Copyright - <a href="http://www.underlinemedia.com" target="_blank">UnderlineMedia</a></div></td>
          <td valign="top"><div align="right">Version 1.1 [<a href="http://www.underlinemedia.com/freeApplications.php">update</a>] <br />
            [<a href="http://www.underlinemedia.com/AmazonRecommendations.php">donate</a>]
          </div></td>
        </tr>
      </table></td>
  </tr>
</table>
<p>&nbsp; </p>
</body>
</html>