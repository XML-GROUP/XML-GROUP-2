<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/twitter">
<html>
<head>
     <title>Twitter Feed</title>
</head>
<body>
	<h1>Twitter Feed</h1>
      <xsl:apply-templates select="//tweet"/>
</body>
</html>
</xsl:template>
 <xsl:template match="tweet">
    <div style="border: 1px solid #ccc; padding: 10px; margin-bottom: 10px;">
      <p><strong>Author:</strong> <xsl:value-of select="author"/></p>
      <p><strong>Content:</strong> <xsl:value-of select="content"/></p>
      <p><strong>Likes:</strong> <xsl:value-of select="likes"/></p>
    </div>
</xsl:template>
</xsl:stylesheet>