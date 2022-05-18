<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
      <xsl:template match="/tienda">
        <html lang="en">
            <head>
                <title><xsl:value-of select="title"/></title>
                <link rel="stylesheet" href="3_tienda.css"/>
            </head>
            <body>
                <section>
                    <h1><xsl:value-of select="encabezado"/></h1>
                    <p><xsl:value-of select="descripcion"/></p>
                </section>
                <section>
                    <h2>Productos:</h2>
                    <div>
                        <xsl:for-each select="/tienda/producto">
                            <div id="tarjeta">
                                <h3>Nombre: <xsl:value-of select="nombre"/></h3>
                                <p class="blanco" >Descripcion: <xsl:value-of select="descripcion"/></p>
                                <p class="blanco">Precio: <xsl:value-of select="precio"/></p>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
     
</xsl:stylesheet>

 
    
    

