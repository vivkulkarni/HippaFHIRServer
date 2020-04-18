<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s1 s0 s2 userCSharp" version="1.0" xmlns:s0="http://HippaToFHIRDemo.Identifier" xmlns:s1="http://hl7.org/fhir" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:s2="http://schemas.microsoft.com/BizTalk/2003/aggschema" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:ns0="http:\HippaToFHIRDemo" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s2:Root" />
  </xsl:template>
  <xsl:template match="/s2:Root">
    <xsl:variable name="var:v1" select="userCSharp:StringConcat(&quot;Test&quot;)" />
    <xsl:variable name="var:ID" select="userCSharp:SetIdentifier(string(InputMessagePart_0/s0:Root/Value/text()))" />
    <xsl:variable name="var:var1" select="userCSharp:StringConcat(&quot; &quot;)" />
    
    <ns0:FHIRErrors>
      <xsl:attribute name="name">
        <xsl:value-of select="$var:v1" />
      </xsl:attribute> 
        <xsl:variable name="var:v2" select="position()" />
        <xsl:variable name="var:v3" select="userCSharp:DateCurrentDate()" />
        <xsl:variable name="var:var" select="userCSharp:StringConcat(&quot; &quot;)" />
        <ns0:records>
          <ns0:record>
            <xsl:attribute name="number">
              <xsl:value-of select="$var:v2" />
            </xsl:attribute>
            <ns0:DateTime>
              <xsl:value-of select="$var:v3" />
            </ns0:DateTime>            
              <ns0:identifier>
                <ns0:use>
                  <xsl:attribute name="value">
                    <xsl:value-of select="$var:var" />
                  </xsl:attribute>
                </ns0:use>
                <ns0:system>
                  <xsl:attribute name="Sysvalue">
                    <xsl:value-of select="$var:var" />
                  </xsl:attribute>
                </ns0:system>
              <ns0:value>              
                <xsl:variable name="var:Identifier" select="userCSharp:getIdentifier()" />
                <xsl:attribute name="Idvalue">
                  <xsl:value-of select="$var:Identifier" />
                </xsl:attribute>
              </ns0:value>
            </ns0:identifier>
         <xsl:for-each select="InputMessagePart_1/s1:OperationOutcome/s1:issue">
           <xsl:variable name="var:v4" select="userCSharp:LogicalEq(string(s1:severity/@value) , &quot;error&quot;)" />
           <xsl:variable name="var:v6" select="string(s1:severity/@value)" />
           <xsl:variable name="var:v7" select="userCSharp:LogicalEq($var:v6 , &quot;error&quot;)" />
           <ns0:errors>
              <ns0:error>
                <ns0:code>
                  <xsl:if test="string($var:v7)='true'">
                    <xsl:variable name="var:v5" select="s1:code/@value" />
                    <xsl:attribute name="value">
                      <xsl:value-of select="$var:v5" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:code>
                <ns0:details>
                  <ns0:text>
                    <xsl:if test="string($var:v7)='true'">
                      <xsl:variable name="var:v8" select="s1:details/s1:text/@value" />
                      <xsl:attribute name="value">
                        <xsl:value-of select="$var:v8" />
                      </xsl:attribute>
                    </xsl:if>
                  </ns0:text>
                </ns0:details>
                <ns0:location>
                  <xsl:if test="string($var:v7)='true'">
                    <xsl:variable name="var:v9" select="s1:expression/@value" />
                    <xsl:attribute name="value">
                      <xsl:value-of select="$var:v9" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:location>
                <ns0:expression>
                  <xsl:if test="string($var:v7)='true'">
                    <xsl:variable name="var:v10" select="s1:location/@value" />
                    <xsl:attribute name="value">
                      <xsl:value-of select="$var:v10" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:expression>
              </ns0:error>
            </ns0:errors>
         </xsl:for-each>
          </ns0:record>
      </ns0:records>
    </ns0:FHIRErrors>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp">
  <![CDATA[
  
public string Identifier;
public string SetIdentifier(string param1)
{
         Identifier=param1;
	return param1;
}

public string getIdentifier()
{
	return Identifier;
}

  
public string StringConcat(string param0)
{
   return param0;
}
public bool LogicalEq(string val1, string val2)
{
	bool ret = false;
	double d1 = 0;
	double d2 = 0;
	if (IsNumeric(val1, ref d1) && IsNumeric(val2, ref d2))
	{
		ret = d1 == d2;
	}
	else
	{
		ret = String.Compare(val1, val2, StringComparison.Ordinal) == 0;
	}
	return ret;
}
public string DateCurrentDate()
{
	DateTime dt = DateTime.Now;
	return dt.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
}


public string StringTrimRight(string str)
{
	if (str == null)
	{
		return "";
	}
	return str.TrimEnd(null);
}
public bool IsNumeric(string val)
{
	if (val == null)
	{
		return false;
	}
	double d = 0;
	return Double.TryParse(val, System.Globalization.NumberStyles.AllowThousands | System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out d);
}

public bool IsNumeric(string val, ref double d)
{
	if (val == null)
	{
		return false;
	}
	return Double.TryParse(val, System.Globalization.NumberStyles.AllowThousands | System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out d);
}

]]></msxsl:script>
</xsl:stylesheet>