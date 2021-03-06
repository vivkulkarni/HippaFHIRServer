<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 s1 userCSharp" version="1.0" xmlns:ns0="http:\HippaToFHIRDemo" xmlns:s1="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:s0="http://HippaToFHIRDemo.Identifier" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s1:Root" />
  </xsl:template>
  <xsl:template match="/s1:Root">
    <xsl:variable name="var:IDValue" select="userCSharp:SetId(string(InputMessagePart_0/s0:Root/Value/text()))" />
    <ns0:FHIRErrors>
      <xsl:attribute name="name">
        <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/@name" />
      </xsl:attribute>
      <ns0:records>
        <ns0:record>
          <xsl:attribute name="number">
            <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/@number" />
          </xsl:attribute>
          <ns0:DateTime>
            <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:DateTime/text()" />
          </ns0:DateTime>
          <ns0:identifier>
            <ns0:use>
              <xsl:attribute name="value">
                <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:identifier/ns0:use/@value" />
              </xsl:attribute>
            </ns0:use>
            <ns0:system>
              <xsl:attribute name="Sysvalue">
                <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:identifier/ns0:system/@Sysvalue" />
              </xsl:attribute>
            </ns0:system>
            <ns0:value>
              <xsl:variable name="var:Identifier" select="userCSharp:GetId()" />
              <xsl:attribute name="Idvalue">
                <xsl:value-of select="$var:Identifier" />
              </xsl:attribute>
            </ns0:value>
          </ns0:identifier>
          <ns0:errors>
            <ns0:error>
              <xsl:attribute name="number">
                <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:errors/ns0:error/@number" />
              </xsl:attribute>
              <ns0:severity>
                <xsl:attribute name="value">
                  <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:errors/ns0:error/ns0:severity/@value" />
                </xsl:attribute>
              </ns0:severity>
              <ns0:code>
                <xsl:attribute name="value">
                  <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:errors/ns0:error/ns0:code/@value" />
                </xsl:attribute>
              </ns0:code>
              <ns0:details>
                <ns0:text>
                  <xsl:attribute name="value">
                    <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:errors/ns0:error/ns0:details/ns0:text/@value" />
                  </xsl:attribute>
                </ns0:text>
              </ns0:details>
              <ns0:location>
                <xsl:attribute name="value">
                  <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:errors/ns0:error/ns0:location/@value" />
                </xsl:attribute>
              </ns0:location>
              <ns0:expression>
                <xsl:attribute name="value">
                  <xsl:value-of select="InputMessagePart_1/ns0:FHIRErrors/ns0:records/ns0:record/ns0:errors/ns0:error/ns0:expression/@value" />
                </xsl:attribute>
              </ns0:expression>
            </ns0:error>
          </ns0:errors>
        </ns0:record>
      </ns0:records>
    </ns0:FHIRErrors>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/
string Identifier;
public string SetId(string param1)
{
        Identifier=param1;
	return Identifier;
}


///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/

public string GetId()
{
	return Identifier;
}



]]></msxsl:script>
</xsl:stylesheet>