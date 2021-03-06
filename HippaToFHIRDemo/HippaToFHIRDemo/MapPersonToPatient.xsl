<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var userCSharp" version="1.0" xmlns:ns0="http://hl7.org/fhir" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/ns0:Person" />
  </xsl:template>
  <xsl:template match="/ns0:Person">
    <ns0:Patient>
      <ns0:meta>
        <xsl:for-each select="ns0:meta">
          <xsl:for-each select="ns0:versionId">
            <ns0:versionId>
              <xsl:if test="@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:versionId>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="ns0:meta">
          <xsl:for-each select="ns0:lastUpdated">
            <ns0:lastUpdated>
              <xsl:if test="@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:lastUpdated>
          </xsl:for-each>
        </xsl:for-each>
        <ns0:security>
          <xsl:for-each select="ns0:meta">
            <xsl:for-each select="ns0:security">
              <xsl:for-each select="ns0:system">
                <ns0:system>
                  <xsl:if test="@value">
                    <xsl:attribute name="value">
                      <xsl:value-of select="@value" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:system>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
          <xsl:for-each select="ns0:meta">
            <xsl:for-each select="ns0:security">
              <xsl:for-each select="ns0:code">
                <ns0:code>
                  <xsl:if test="@value">
                    <xsl:attribute name="value">
                      <xsl:value-of select="@value" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:code>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
          <xsl:for-each select="ns0:meta">
            <xsl:for-each select="ns0:security">
              <xsl:for-each select="ns0:display">
                <ns0:display>
                  <xsl:if test="@value">
                    <xsl:attribute name="value">
                      <xsl:value-of select="@value" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:display>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </ns0:security>
      </ns0:meta>
      <ns0:text>
        <xsl:for-each select="ns0:text">
          <ns0:status>
            <xsl:if test="ns0:status/@value">
              <xsl:attribute name="value">
                <xsl:value-of select="ns0:status/@value" />
              </xsl:attribute>
            </xsl:if>
          </ns0:status>
        </xsl:for-each>
        <ns2:div xmlns:ns2="http://www.w3.org/1999/xhtml">
          <ns2:p>
          </ns2:p>
           <xsl:for-each select="ns0:name">
            <xsl:variable name="var:v2" select="userCSharp:StringConcat(string(ns0:given/@value))" />
            <ns2:table>
              <ns2:thead>
                <ns2:tr>
                  <ns2:td>
                    <xsl:variable name="var:v1" select="userCSharp:TDName()" />
                    <xsl:value-of select="$var:v1" />
                  </ns2:td>
                  <ns2:td>
                    <xsl:variable name="var:v3" select="userCSharp:TDGetNamet(string($var:v2))" />
                    <xsl:value-of select="$var:v3" />
                  </ns2:td>
                </ns2:tr>
              </ns2:thead>
              <xsl:variable name="var:v4" select="userCSharp:MyConcat()" />
              <xsl:value-of select="$var:v4" />
            </ns2:table>
          </xsl:for-each>
        </ns2:div>
      </ns0:text>
      <ns0:identifier>
        <xsl:for-each select="ns0:identifier">
          <xsl:for-each select="ns0:use">
            <ns0:use>
              <xsl:if test="@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:use>
          </xsl:for-each>
        </xsl:for-each>
        <ns0:type>
          <ns0:coding>
            <xsl:for-each select="ns0:identifier">
              <xsl:for-each select="ns0:type">
                <xsl:for-each select="ns0:coding">
                  <xsl:for-each select="ns0:system">
                    <ns0:system>
                      <xsl:if test="@value">
                        <xsl:attribute name="value">
                          <xsl:value-of select="@value" />
                        </xsl:attribute>
                      </xsl:if>
                    </ns0:system>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
            <xsl:for-each select="ns0:identifier">
              <xsl:for-each select="ns0:type">
                <xsl:for-each select="ns0:coding">
                  <xsl:for-each select="ns0:code">
                    <ns0:code>
                      <xsl:if test="@value">
                        <xsl:attribute name="value">
                          <xsl:value-of select="@value" />
                        </xsl:attribute>
                      </xsl:if>
                    </ns0:code>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
          </ns0:coding>
        </ns0:type>
      </ns0:identifier>
      <xsl:for-each select="ns0:active">
        <ns0:active>
          <xsl:if test="@value">
            <xsl:attribute name="value">
              <xsl:value-of select="@value" />
            </xsl:attribute>
          </xsl:if>
        </ns0:active>
      </xsl:for-each>
      <xsl:for-each select="ns0:name">
        <ns0:name>
          <ns0:use>
            <xsl:if test="ns0:use/@value">
              <xsl:attribute name="value">
                <xsl:value-of select="ns0:use/@value" />
              </xsl:attribute>
            </xsl:if>
          </ns0:use>
          <ns0:family>
            <xsl:if test="ns0:family/@value">
              <xsl:attribute name="value">
                <xsl:value-of select="ns0:family/@value" />
              </xsl:attribute>
            </xsl:if>
          </ns0:family>
          <xsl:for-each select="ns0:given">
            <ns0:given>
              <xsl:if test="@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:given>
          </xsl:for-each>
        </ns0:name>
      </xsl:for-each>
      <xsl:for-each select="ns0:telecom">
        <ns0:telecom>
          <ns0:system>
            <xsl:if test="ns0:system/@value">
              <xsl:attribute name="value">
                <xsl:value-of select="ns0:system/@value" />
              </xsl:attribute>
            </xsl:if>
          </ns0:system>
          <ns0:value>
            <xsl:if test="ns0:value/@value">
              <xsl:attribute name="value">
                <xsl:value-of select="ns0:value/@value" />
              </xsl:attribute>
            </xsl:if>
          </ns0:value>
          <ns0:use>
            <xsl:if test="ns0:use/@value">
              <xsl:attribute name="value">
                <xsl:value-of select="ns0:use/@value" />
              </xsl:attribute>
            </xsl:if>
          </ns0:use>
          <ns0:period>
            <ns0:start>
              <xsl:if test="../ns0:name/ns0:period/ns0:start/@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="../ns0:name/ns0:period/ns0:start/@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:start>
            <ns0:end>
              <xsl:if test="../ns0:name/ns0:period/ns0:end/@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="../ns0:name/ns0:period/ns0:end/@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:end>
          </ns0:period>
        </ns0:telecom>
      </xsl:for-each>
      <ns0:managingOrganization>
        <xsl:for-each select="ns0:managingOrganization">
          <xsl:for-each select="ns0:reference">
            <ns0:reference>
              <xsl:if test="@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:reference>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="ns0:managingOrganization">
          <xsl:for-each select="ns0:display">
            <ns0:display>
              <xsl:if test="@value">
                <xsl:attribute name="value">
                  <xsl:value-of select="@value" />
                </xsl:attribute>
              </xsl:if>
            </ns0:display>
          </xsl:for-each>
        </xsl:for-each>
      </ns0:managingOrganization>
    </ns0:Patient>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}


///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/
int count = 0;

public int MyConcat()
{
	return count;
}


///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/

public string TDName()
{
      if(count==0)
{
      count++;
	return "Name";
}
else
return "";
}


///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/

public string TDGetNamet(string param1)
{
     if(count==1)
{
   count++;
	return param1;
}
else
return "";
}



]]></msxsl:script>
</xsl:stylesheet>