<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://hl7.org/fhir" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:s0="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
	  <xsl:apply-templates select="/s0:X12_00501_270" />
  </xsl:template>
  <xsl:template match="/s0:Root">
	  <xsl:variable name="var:v1" select="userCSharp:StringTrimLeft(&quot;normal&quot;)" />
	  <xsl:variable name="var:v2" select="userCSharp:StringTrimLeft(&quot;validation&quot;)" />
	  <xsl:variable name="var:v3" select="userCSharp:StringConcat(&quot;Partient/&quot; , string(s0:TS270_2000A_Loop/s0:HL_InformationSourceLevel/s0:HL02_HierarchicalParentIDNumber/text()))" />
	  <xsl:variable name="var:v4" select="userCSharp:StringConcat(&quot;Patient/&quot; , string(s0:TS270_2100D_Loop/s0:PRV_ProviderInformation_2/s0:PRV03_ProviderIdentifier/text()))" />
	  <xsl:variable name="var:v5" select="userCSharp:StringConcat(&quot;Organization/&quot; , string(s0:TS270_2000A_Loop/s0:TS270_2100A_Loop/s0:NM1_InformationSourceName/s0:NM109_InformationSourcePrimaryIdentifier/text()))" />
	  <xsl:variable name="var:v6" select="userCSharp:StringTrimLeft(&quot;true&quot;)" />
	  <xsl:variable name="var:v7" select="userCSharp:StringConcat(&quot;Coverage/&quot; , string(s0:TS270_2100D_Loop/s0:HI_DependentHealthCareDiagnosisCode/s0:C022_HealthCareCodeInformation_13/text()))" />

	  <ns0:CoverageEligibilityRequest>
      <ns0:meta>
        <ns0:security>
          <ns0:system>
            <xsl:attribute name="value">
              <xsl:value-of select="Root_Child1/system[1]/text()" />
            </xsl:attribute>
          </ns0:system>
          <ns0:code>
            <xsl:attribute name="value">
              <xsl:value-of select="Root_Child1/code[1]/text()" />
            </xsl:attribute>
          </ns0:code>
          <ns0:display>
            <xsl:attribute name="value">
              <xsl:value-of select="Root_Child1/display/text()" />
            </xsl:attribute>
          </ns0:display>
        </ns0:security>
      </ns0:meta>
      <ns0:text>
        <ns0:status>
          <xsl:attribute name="value">
            <xsl:value-of select="Root_Child1/status[1]/text()" />
          </xsl:attribute>
        </ns0:status>
        <ns2:div>
          <xsl:value-of select="Root_Child1/Div/text()" />
        </ns2:div>
      </ns0:text>
      <identifier>
        <ns0:use>
          <xsl:attribute name="value">
            <xsl:value-of select="Root_Child1/use_value/text()" />
          </xsl:attribute>
        </ns0:use>
        <ns0:system>
          <xsl:attribute name="value">
            <xsl:value-of select="Root_Child1/system[2]/text()" />
          </xsl:attribute>
        </ns0:system>
        <ns0:value>
          <xsl:attribute name="value">
            <xsl:value-of select="Root_Child1/value/text()" />
          </xsl:attribute>
        </ns0:value>
      </identifier>
		  <status>
			  <xsl:text>active</xsl:text>
		  </status>


		  <priority>
			  <ns0:coding>
				  <ns0:code>
					  <xsl:attribute name="value">
						  <xsl:value-of select="$var:v1" />
					  </xsl:attribute>
				  </ns0:code>
			  </ns0:coding>
		  </priority>
		  <purpose>
			  <xsl:attribute name="value">
				  <xsl:value-of select="$var:v2" />
			  </xsl:attribute>
		  </purpose>
		  <patient>
			  <ns0:reference>
				  <xsl:attribute name="value">
					  <xsl:value-of select="$var:v3" />
				  </xsl:attribute>
			  </ns0:reference>
		  </patient>
		  <provider>
			  <ns0:reference>
				  <xsl:attribute name="value">
					  <xsl:value-of select="$var:v4" />
				  </xsl:attribute>
			  </ns0:reference>
		  </provider>
		  <insurer>
			  <ns0:reference>
				  <xsl:attribute name="value">
					  <xsl:value-of select="$var:v5" />
				  </xsl:attribute>
			  </ns0:reference>
		  </insurer>
		  <insurance>
			  <focal>
				  <xsl:attribute name="value">
					  <xsl:value-of select="$var:v6" />
				  </xsl:attribute>
			  </focal>
			  <coverage>
				  <ns0:reference>
					  <xsl:attribute name="value">
						  <xsl:value-of select="$var:v7" />
					  </xsl:attribute>
				  </ns0:reference>
			  </coverage>
		  </insurance>
	  </ns0:CoverageEligibilityRequest>
  </xsl:template>
<msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0, string param1)
{
   return param0 + param1;
}

	public string StringTrimLeft(string str)
	{
	if (str == null)
	{
	return "";
	}
	return str.TrimStart(null);
	}

]]>
	</msxsl:script>


</xsl:stylesheet>