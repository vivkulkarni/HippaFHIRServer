<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns="http://hl7.org/fhir" xmlns:s0="http://schemas.microsoft.com/BizTalk/EDI/X12/2006" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:X12_00501_270" />
  </xsl:template>
  <xsl:template match="/s0:X12_00501_270">
    <xsl:variable name="var:v1" select="userCSharp:StringTrimRight(&quot;active&quot;)" />
    <xsl:variable name="var:v2" select="userCSharp:StringTrimRight(&quot;normal&quot;)" />
    <xsl:variable name="var:v3" select="userCSharp:StringTrimRight(&quot;validation&quot;)" />
    <xsl:variable name="var:v4" select="userCSharp:StringTrimRight(&quot;true&quot;)" />
    <xsl:variable name="var:v7" select="userCSharp:StringConcat(&quot;Coverage/&quot; , string(s0:TS270_2100D_Loop/s0:HI_DependentHealthCareDiagnosisCode/s0:C022_HealthCareCodeInformation_13/text()))" />
    <xsl:variable name="var:v8" select="userCSharp:DateCurrentDate()" />
    <xsl:variable name="var:v5" select="userCSharp:StringConcat(&quot;Partient/&quot; , string(s0:TS270_2000A_Loop/s0:HL_InformationSourceLevel/s0:HL02_HierarchicalParentIDNumber/text()))" />
    <xsl:variable name="var:v6" select="userCSharp:StringConcat(&quot;Patient/&quot; , string(s0:TS270_2100D_Loop/s0:PRV_ProviderInformation_2/s0:PRV03_ProviderIdentifier/text()))" />
    <xsl:variable name="var:v9" select="userCSharp:StringConcat(&quot;Organization/&quot; , string(s0:TS270_2000A_Loop/s0:TS270_2100A_Loop/s0:NM1_InformationSourceName/s0:NM109_InformationSourcePrimaryIdentifier/text()))" />
     <xsl:variable name="var:v12" select="userCSharp:StringTrimRight(&quot;A human-readable rendering of the CoverageEligibilityRequest&quot;)" />
    <xsl:variable name="var:v22" select="userCSharp:StringTrimRight(&quot;official&quot;)" />
    <xsl:variable name="var:v32" select="userCSharp:StringTrimRight(&quot;http://happyvalley.com/coverageelegibilityrequest&quot;)" />
    <xsl:variable name="var:v42" select="userCSharp:StringTrimRight(&quot;52345&quot;)" />
   
 <CoverageEligibilityRequest>
      <text>
        <status value="generated"/>
        <div xmlns="http://www.w3.org/1999/xhtml">
          <xsl:value-of select="$var:v12" />
        </div>
      </text> 
       <identifier>
        <use>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v22" />
          </xsl:attribute>
        </use>
        <system>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v32" />
          </xsl:attribute>
        </system>
        <value>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v42" />
          </xsl:attribute>
        </value>
      </identifier>
     <status>
       <xsl:attribute name="value">
        <xsl:value-of select="$var:v1" />
       </xsl:attribute>
      </status>
      <priority>
        <coding>
          <code>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v2" />
            </xsl:attribute>
          </code>
        </coding>
      </priority>
      <purpose>
        <xsl:attribute name="value">
          <xsl:value-of select="$var:v3" />
        </xsl:attribute>
      </purpose>     
      <patient>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:variable name="var:v14" select="userCSharp:StringConcat(&quot;Patient/&quot; , string(s0:HL_InformationSourceLevel/HL02_HierarchicalParentIDNumber/text()))" />
          <reference>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v14" />
            </xsl:attribute>
          </reference>
        </xsl:for-each>
      </patient>
      <!--<created>
        <xsl:attribute name="value">
          <xsl:value-of select="$var:v8" />
        </xsl:attribute>
      </created>-->
      <provider>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:PRV_ProviderInformation">
                <xsl:variable name="var:v16" select="userCSharp:StringConcat(&quot;Organisation/&quot; , string(PRV03_ProviderIdentifier/text()))" />
                <reference>
                  <xsl:attribute name="value">
                    <xsl:value-of select="$var:v16" />
                  </xsl:attribute>
                </reference>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
      </provider>
      <insurer>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:variable name="var:v17" select="userCSharp:StringConcat(&quot;Organisation/&quot; , string(s0:TS270_2100A_Loop/s0:NM1_InformationSourceName/NM109_InformationSourcePrimaryIdentifier/text()))" />
          <reference>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v17" />
            </xsl:attribute>
          </reference>
        </xsl:for-each>
      </insurer>

      <xsl:variable name="var:v19" select="userCSharp:MyConcat()" />
    </CoverageEligibilityRequest>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp">
  <![CDATA[
public string StringTrimRight(string str)
{
	if (str == null)
	{
		return "";
	}
	return str.TrimEnd(null);
}
public string StringConcat(string param0, string param1)
{
   return param0 + param1;
}
public string DateCurrentDate()
{
	DateTime dt = DateTime.Now;
	return dt.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
}


///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/
int count=1;
public int MyConcat()
{
	return count;
}

///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/

public string getCount1(string Param)
{
          if(count==1)
             {
                count=count+1;
                return Param;
                
             }
          else
             {
             count=count+1;
	return "0";
               }
}

public bool LogicalNe(string val1, string val2)
{
	bool ret = false;
	double d1 = 0;
	double d2 = 0;
	if (IsNumeric(val1, ref d1) && IsNumeric(val2, ref d2))
	{
		ret = d1 != d2;
	}
	else
	{
		ret = String.Compare(val1, val2, StringComparison.Ordinal) != 0;
	}
	return ret;
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