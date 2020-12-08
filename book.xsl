<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  
<xsl:template match = "/"> 

<html> 
<style>
    *{
        padding: 0;
        margin:0;
        box-sizing: border-box;
    }
    body{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        font-family: cursive;
        min-height: 100vh;
        background-color:#ffd861;
    }
    h2,h3{
        text-align: center;
        font-size: 2em;
        margin-bottom: 2rem;
        color: #000000;
        text-shadow: 2px 2px #d3c8d3;
    }
    h3{
        font-size: 1.5em;
    }
    table{
        border: solid 2px #151718;
        color: black;
    }
    th{
        background-color: #ffe07f;
    }
    td{
        background-color: #ffc56d;
        border: solid 2px #000000;
    }
</style>
<body> 
    <h2>Books you love:)</h2>
     <h3>NILESH.S.MISHRA - TE-A-146</h3>
    <table> 
    <tr> 
    <th>TITLE</th> 
    <th>AUTHOR</th>  
    <th>PAGES</th>
    <th>YEAR</th> 
    <th>GENRE</th>
   </tr> 
  
    <xsl:for-each select="LIBRARY/BOOK"> 
        <tr bgcolor = "lightblue" height="50"> 
            <td align="center" width="100"><xsl:value-of select = "TITLE"/></td> 
            <td align="center" width="100"><xsl:value-of select = "AUTHOR"/></td> 
            <td align="center" width="100"><xsl:value-of select = "PAGES"/></td> 
            <td align="center" width="100"><xsl:value-of select = "YEAR"/></td> 
            <td align="center" width="100"><xsl:value-of select = "GENRE"/></td>  
        </tr> 
    </xsl:for-each> 
    </table> 
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet>