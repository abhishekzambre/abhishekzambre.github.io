<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
  <head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Movies XML/XSL Transformation</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>

    <style type="text/css">
      body {
      padding-top: 1.5rem;
      }
    </style>
  
  </head>
  
  <body>
    <div class="container">
      <h1 style="text-align: center">Movies XML/XSL Transformation</h1>
      <hr/>
      <table class="table">
        <thead>
          <tr>
            <th>Title</th>
            <th>Rating</th>
            <th>Runtime</th>
            <th>Director</th>
            <th>Genre</th>
            <th>Studio</th>
            <th>Year</th>
          </tr>
        </thead>

        <tbody>
          <xsl:for-each select="Movies/Movie">
            <tr>
              <td><xsl:value-of select="Title"/></td>
              <td><xsl:value-of select="@Rating"/></td>
              <td><xsl:value-of select="Title/@Runtime"/></td>
              <td>
                <xsl:for-each select="Director/Name">
                  <xsl:value-of select="First"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="Last"/>
                  <xsl:text> </xsl:text>
                  <xsl:if test="@High-rated-movie">(High-rated: <xsl:value-of select="@High-rated-movie"/>)</xsl:if>
                  <br/>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="Genre"/></td>
              <td><xsl:value-of select="Studio"/></td>
              <td><xsl:value-of select="Year"/></td>
            </tr>
          </xsl:for-each>
        </tbody>
      </table>
    </div>
  </body> 
</html>
</xsl:template>
</xsl:stylesheet>