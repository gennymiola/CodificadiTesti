<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
            <title>Progetto di Codifica dei Testi - Prolusioni 12 e 13 di F.De Saussure -</title>
            <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
            <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
            <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
            <script src="prol.js"></script>
            <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
            <link href="prol3.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h2><xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']"></xsl:value-of></h2>
                    <nav class="navMenu">
                        <ul> 
                            <li><a href="#Pagina12">PAGINA 12</a></li>
                            <li><a href="#Pagina13">PAGINA 13</a></li>
                            <li><a href="#intro">INFO GENERALI</a></li>
                            <li><a href="#appendice">APPENDICE</a></li>
                        </ul>
                    </nav>
                </header>
                <div class="container" id="intro">
                        <div>
                            <h3>Caratteristiche generali</h3>
                                <p>Manoscritto ad opera di <xsl:value-of select="//tei:titleStmt/tei:author"></xsl:value-of></p>
                        </div>
                        <div>
                            <xsl:apply-templates select="//tei:msContents" />
                        </div>
                        <br/>
                          <div>
                            <xsl:apply-templates select="//tei:encodingDesc" />
                        </div>
                        <div>
                            <xsl:apply-templates select="//tei:physDesc" />
                        </div>
                         <div>
                            <xsl:apply-templates select="//tei:history" />
                        </div>
                </div>
                <div id="bottoni">
                    <button type="button" id="terminologia">Terminologia</button>
                    <button type="button" id="sostituzioni">Sostituzioni</button>
                    <button type="button" id="cancellazioni">Cancellazioni</button>
                    <button type="button" id="aggiunte">Aggiunte</button>
                    <button type="button" id="abbreviazioni">Abbreviazioni</button>
                    <button type="button" id="regolarizzazioni">Regolarizzazioni</button>
                </div>
                <div class="p12" id="Pagina12">
                    <h3>Pagina 12</h3>
                    <div class="column">
                        <div class="img-wrapper">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:graphic[@xml:id='pag12']/@url"/>
                                </xsl:attribute>
                                <xsl:attribute name="id">fronte12</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="img-wrapper">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:graphic[@xml:id='pag12R']/@url"/>
                                </xsl:attribute>
                                <xsl:attribute name="id">retro12</xsl:attribute>
                                <xsl:attribute name="class">nascondi</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="retropag12">
                            <button type="button" id="retro_pag12"> Mostra retro </button>
                        </div>
                    </div>
                    <div class="column">
                        <div class="trascrizione_p12">
                            <xsl:apply-templates select="//tei:text//tei:div[@n = '12']"/>
                        </div>  
                    </div>
                </div>
                    <div class="traduzione_p12">
                        <h3 id="trad">Traduzione:</h3>
                            <xsl:apply-templates select="//tei:text//tei:div[@type = 'traduzionepag12']"/>
                    </div>
    

               <div class="p13" id="Pagina13">
                    <h3>Pagina 13</h3>
                    <div class="column">
                        <div class="img-wrapper">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:graphic[@xml:id='pag13']/@url"/>
                                </xsl:attribute>
                                <xsl:attribute name="id">fronte13</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="img-wrapper">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="//tei:graphic[@xml:id='pag13R']/@url"/>
                                </xsl:attribute>
                                <xsl:attribute name="id">retro13</xsl:attribute>
                                <xsl:attribute name="class">nascondi</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="retropag13">
                            <button type="button" id="retro_pag13"> Mostra retro </button>
                        </div>
                    </div>
                    <div class="column">
                        <div class="trascrizione_p13">
                            <xsl:apply-templates select="//tei:text//tei:div[@n = '13']"/>
                        </div>  
                    </div>
                </div>
                <div class="traduzione_p13">
                    <h3>Traduzione:</h3>
                    <xsl:apply-templates select="//tei:text//tei:div[@type = 'traduzionepag13']"/>
                </div>
                <div id="bottoni2">
                    <button type="button" id="glotto"> Glottonimi</button> 
                     <button type="button" id="pl"> Luoghi</button> 
                     <button type="button" id="pr"> Persone</button> 
                     <button type="button" id="termini"> Keywords</button> 
                </div>
                    <div class="contenitore">
                        <div id="div_glott">
                            <xsl:apply-templates select="//tei:listOrg"/>
                        </div>
                    <div id="div_place">
                        <xsl:apply-templates select="//tei:listPlace"/>
                    </div>
                    <div id="div_keywords">
                        <xsl:apply-templates select="//tei:back/tei:list"/>
                    </div>
                    <div id="div_person">
                        <xsl:apply-templates select="//tei:listPerson"/>
                    </div>
                </div>
                <div class="end" id="appendice">
                    <div class="container_bibl">
                        <h3>Bibliografia</h3>
                        <xsl:apply-templates select="//tei:listBibl"/>
                    </div>

                    <div class="container_append">
                        <h3>Riferimenti</h3>
                        <xsl:apply-templates select="//tei:editionStmt"/>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Caratteristiche -->
    <xsl:template match="tei:msContents">
        <b>Titolo: </b><span><xsl:apply-templates select="//tei:msItem/tei:title" /></span>
        <br />
        <b>Autore: </b><span><xsl:apply-templates select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author" /></span>
        <br />
        <b>Lingua: </b><span><xsl:apply-templates select="//tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language" /></span>
        <br />
        <b>Data: </b><span><xsl:apply-templates select="//tei:settingDesc/tei:setting/tei:date" /></span>
        <br />
        <b>Luogo: </b><span><xsl:apply-templates select="//tei:msItem/tei:docImprint/tei:pubPlace" /></span>
    </xsl:template>

    <!-- Storia -->
    <xsl:template match="tei:history">
         <xsl:element name="div">
            <xsl:element name="h3">Storia del manoscritto</xsl:element>
            <xsl:element name="div">
                <b>Origine: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()/tei:origin" />
                </xsl:element> 
                <br />
                <b>Acquisizione: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()/tei:acquisition" />
                </xsl:element> 
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- Descrizione fisica -->
    <xsl:template match="tei:physDesc">
        <xsl:element name="div">
            <xsl:element name="h3">Descrizione fisica</xsl:element>
            <xsl:element name="div">
                <b>Supporto: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:support" />
                </xsl:element> 
                <br />
                <b>Quantità: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:extent" />
                </xsl:element>
                <br />
                <b>Condizioni di conservazione: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:condition" />
                </xsl:element>
                <br />
                <b>Layout:</b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:layout" />
                </xsl:element>
                <br />
                <b>Mani: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:handDesc" />
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!--pratiche editoriali-->
    <xsl:template match="tei:encodingDesc">
        <xsl:element name="div">
            <xsl:element name="h3">Pratiche editoriali adottate</xsl:element>
            <xsl:element name="div">
                <b>Normalizzazione dei fenomeni: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:editorialDecl/tei:normalization" />
                </xsl:element> 
                <br />
                <b>Punteggiatura: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:editorialDecl/tei:punctuation" />
                </xsl:element> 
                <br />
                <b>Sillabazione: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:editorialDecl/tei:hyphenation" />
                </xsl:element> 
                <br />
                <b>Segmentazione: </b>
                <xsl:element name="span">
                    <xsl:apply-templates select="current()//tei:editorialDecl/tei:segmentation" />
                </xsl:element> 
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- Templates dei fenomeni del documento -->
    
    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <del><xsl:apply-templates /></del>
    </xsl:template>

    <!-- Aggiunte -->
    <xsl:template match="tei:add">
        <add><xsl:apply-templates /></add>
    </xsl:template>

     <!-- Sostituzioni -->
    <xsl:template match="tei:subst">
        <subst><xsl:apply-templates /></subst>
    </xsl:template>

    <!-- Modifiche generiche -->
    <xsl:template match="tei:mod">
        <mod><xsl:apply-templates /></mod>
    </xsl:template>

    <!-- abbreviazioni -->
    <xsl:template match="tei:abbr">
      <abbr><xsl:value-of select="current()" /></abbr>
    </xsl:template>

    <!-- espansioni abbreviazioni -->
    <xsl:template match="tei:expan">
      <xsl:element name="span">
        <xsl:attribute name="class">expan</xsl:attribute>
        -<i><xsl:value-of select="current()" /></i>-
      </xsl:element>
    </xsl:template>

    <!-- Forma originale (orig)-->
    <xsl:template match="tei:orig">
        <orig><xsl:apply-templates /></orig>
    </xsl:template>
    
    <!-- Forma regolarizzata (reg) -->
    <xsl:template match="tei:reg">
        <reg><xsl:apply-templates /></reg>
    </xsl:template>

  <!-- Forma originale (sic)-->
    <xsl:template match="tei:sic">
        <sic><xsl:apply-templates /></sic>
    </xsl:template>
    
    <!-- Forma corretta (corr) -->
    <xsl:template match="tei:corr">
        <corr><xsl:apply-templates /></corr>
    </xsl:template>

    <!-- Elementi mancanti --> 
    <xsl:template match="tei:gap">
        <span class="gap">?</span>
    </xsl:template>

     <!-- Termini stranieri e corsivo --> 
    <xsl:template match="tei:foreign | tei:hi[@rend = 'italic']">
        <i><xsl:apply-templates /></i>
    </xsl:template>

    <!-- Sottolineature --> 
    <xsl:template match="tei:emph[@rend = 'underline']">
        <u><xsl:apply-templates /></u>
    </xsl:template>

    <!-- Glottonimi --> 
    <xsl:template match="tei:orgName">
        <glott><xsl:apply-templates /></glott>
    </xsl:template>

     <!-- Keywords --> 
    <xsl:template match="tei:term">
        <term><xsl:apply-templates /></term>
    </xsl:template>

    <!--Toponimi-->
    <xsl:template match="tei:placeName[@n='k'] | tei:region[@n='k'] | tei:country[@n='k']">
        <place><xsl:apply-templates /></place>
    </xsl:template>

    <!--Date-->
    <xsl:template match="tei:date">
        <span><xsl:apply-templates /></span>
    </xsl:template>

    <!--Data da segnalare-->
    <xsl:template match="tei:date[@xml:id] | tei:date[@ref]">
        <date><xsl:apply-templates /></date>
    </xsl:template>

    <!-- Page beginning --> 
    <xsl:template match="tei:pb">
        <xsl:element name="div">
            <xsl:attribute name="id">pagina_<xsl:value-of select="current()/@n" /></xsl:attribute>
        </xsl:element>
    </xsl:template>

     <!-- Line beginning --> 
    <xsl:template match="tei:lb">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
            <xsl:attribute name="id"><xsl:value-of select="current()/@xml:id"/></xsl:attribute>
            <b><xsl:value-of select="@n" /></b>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>

    <!--paragrafi-->
    <xsl:template match="tei:ab[@type='paragrafo']">
      <xsl:element name="span">
        <xsl:attribute name="class">paragrafo</xsl:attribute>
        <xsl:attribute name="id"><xsl:value-of select="current()/@n" /></xsl:attribute>
        <xsl:apply-templates />
      </xsl:element>
    </xsl:template>

     <!--paragrafi traduzione-->
    <xsl:template match="tei:ab[@xml:lang='it']">
      <xsl:element name="span">
        <xsl:attribute name="class">paragrafo_trad</xsl:attribute>
        <xsl:attribute name="id"><xsl:value-of select="current()/@n" /></xsl:attribute>
        <xsl:apply-templates />
      </xsl:element>
    </xsl:template>

    <!--lista organizzazioni-->
    <xsl:template match="tei:listOrg">
        <xsl:element name="h3">Glottonimi individuati</xsl:element>
        <xsl:for-each select="current()/tei:org">
            <xsl:element name="li">
                <b><xsl:value-of select="current()/tei:orgName" />: </b>
                <xsl:value-of select="current()/tei:desc" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

     <!--lista organizzazioni-->
    <xsl:template match="tei:listPlace">
        <xsl:element name="h3">Lista dei luoghi</xsl:element>
        <xsl:for-each select="current()/tei:place">
            <xsl:element name="li">
                <xsl:value-of select="current()/tei:placeName" />,
                <xsl:value-of select="current()/tei:settlement" />,
                <xsl:value-of select="current()/tei:country" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

 <!--lista persone-->
    <xsl:template match="tei:listPerson">
        <xsl:element name="h3">Lista delle persone menzionate</xsl:element>
        <xsl:for-each select="current()/tei:person">
            <xsl:element name="li">
                <xsl:value-of select="current()/tei:persName" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

 <!--lista parole chiave-->
<xsl:template match="tei:list">
        <xsl:element name="h3">Keywords:</xsl:element>
        <xsl:for-each select="current()/tei:item">
            <xsl:element name="li">
                <xsl:value-of select="current()/tei:gloss" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
  
   <!-- Informazioni sull'edizione -->
    <xsl:template match="tei:editionStmt">
        <b><xsl:value-of select="current()/tei:edition"></xsl:value-of></b>
        <p><b>Progetto a cura di: </b> <xsl:value-of select="current()/tei:respStmt/tei:name[@ref='GM']"></xsl:value-of></p>
        <p><b>Coordinato da: </b> <xsl:value-of select="current()/tei:respStmt/tei:name[@ref='AMDG']"></xsl:value-of></p>
        <p><b>Traduzione di: </b> <xsl:value-of select="//tei:name[@ref='EF']"></xsl:value-of></p>
        <p><b>Trascrizione di: </b> <xsl:value-of select="//tei:name[@ref='SB']"></xsl:value-of> e <xsl:value-of select="//tei:name[@ref='RE']"></xsl:value-of></p>
    </xsl:template>

    <!-- Template bibliografia -->
    <xsl:template match="tei:listBibl">
        <xsl:for-each select="current()/tei:bibl">
            <xsl:element name="li">
                <xsl:for-each select="current()/tei:author">
                    <xsl:value-of select="normalize-space(current())" />,
                </xsl:for-each> 
                "<i><xsl:value-of select="current()/tei:title" /></i>"
                <xsl:apply-templates select="current()/tei:pubPlace" />,
                <xsl:value-of select="current()/tei:publisher" />,
                <xsl:value-of select="current()/tei:date" />.
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

