<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="/rss/channel/title"/> — RSS Feed</title>
        <style>
          @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;700&amp;display=swap');
          body { font-family: 'Plus Jakarta Sans', sans-serif; background: #4dfff3; margin: 0; padding: 2rem 1rem; color: #3a405a; }
          .container { max-width: 45em; margin: 0 auto; background: #fff; padding: 2rem; }
          h1 { font-size: 2rem; color: #ed15f4; background: #eef36a; display: inline; padding: 0 0.4rem; }
          h2 { font-size: 1rem; font-weight: 700; color: #ed15f4; margin: 0 0 0.25rem; }
          .intro { font-style: italic; color: #666; margin: 1rem 0 2rem; font-size: 0.95rem; }
          .intro a { color: #ed15f4; }
          .item { border-bottom: 3px dashed #4dfff3; padding-bottom: 1.25rem; margin-bottom: 1.25rem; }
          .item:last-child { border-bottom: none; }
          .item a { color: #ed15f4; text-decoration: none; }
          .item a:hover { background: #8AF9F6; }
          .date { font-size: 0.8rem; color: #999; margin-bottom: 0.4rem; }
          .desc { font-size: 0.95rem; line-height: 1.5; margin-top: 0.4rem; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1><xsl:value-of select="/rss/channel/title"/></h1>
          <p class="intro">
            This is an RSS feed. Subscribe by copying the URL into your RSS reader.
            <a><xsl:attribute name="href"><xsl:value-of select="/rss/channel/link"/></xsl:attribute>← Back to site</a>
          </p>
          <xsl:for-each select="/rss/channel/item">
            <div class="item">
              <div class="date"><xsl:value-of select="pubDate"/></div>
              <h2><a><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of select="title"/></a></h2>
              <div class="desc"><xsl:value-of select="description"/></div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
