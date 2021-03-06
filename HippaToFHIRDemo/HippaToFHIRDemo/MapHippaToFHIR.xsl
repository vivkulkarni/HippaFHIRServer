<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://hl7.org/fhir" xmlns:s0="http://schemas.microsoft.com/BizTalk/EDI/X12/2006" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:X12_00501_270" />
  </xsl:template>
  <xsl:template match="/s0:X12_00501_270">
    <xsl:variable name="var:v2" select="userCSharp:StringConcat(&quot;2&quot;)" />
    <xsl:variable name="var:v3" select="userCSharp:DateCurrentDateTime()" />
    <xsl:variable name="var:v4" select="userCSharp:StringConcat(&quot;generated&quot;)" />
    <ns0:Patient>
      <ns0:id>
        <xsl:variable name="var:v1" select="userCSharp:GetGUID()" />
        <xsl:attribute name="value">
          <xsl:value-of select="$var:v1" />
        </xsl:attribute>
      </ns0:id>
      <ns0:meta>
        <ns0:versionId>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v2" />
          </xsl:attribute>
        </ns0:versionId>
      </ns0:meta>
      <ns0:text>
        <ns0:status>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v4" />
          </xsl:attribute>
        </ns0:status>
        <ns2:div xmlns:ns2="http://www.w3.org/1999/xhtml">
          <ns2:p>       
            <ns2:b>
              <xsl:text>Test Vivek </xsl:text>
            </ns2:b>
          </ns2:p>
        </ns2:div>
      </ns0:text>
      <ns0:identifier>
        <xsl:variable name="var:v6" select="userCSharp:GetGUID()" />
        <xsl:attribute name="id">
          <xsl:value-of select="$var:v6" />
        </xsl:attribute>
      </ns0:identifier>
      <ns0:name>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <ns0:family>
            <xsl:attribute name="value">
              <xsl:value-of select="s0:TS270_2100A_Loop/s0:NM1_InformationSourceName/NM103_InformationSourceLastorOrganizationName/text()" />
            </xsl:attribute>
          </ns0:family>
        </xsl:for-each>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <ns0:given>
            <xsl:if test="s0:TS270_2100A_Loop/s0:NM1_InformationSourceName/NM104_InformationSourceFirstName">
              <xsl:attribute name="value">
                <xsl:value-of select="s0:TS270_2100A_Loop/s0:NM1_InformationSourceName/NM104_InformationSourceFirstName/text()" />
              </xsl:attribute>
            </xsl:if>
          </ns0:given>
        </xsl:for-each>
      </ns0:name>
      <xsl:for-each select="s0:TS270_2000A_Loop">
        <xsl:for-each select="s0:TS270_2000B_Loop">
          <xsl:for-each select="s0:TS270_2000C_Loop">
            <xsl:for-each select="s0:TS270_2100C_Loop/s0:DMG_SubscriberDemographicInformation">
              <xsl:variable name="var:v7" select="string(DMG03_SubscriberGenderCode/text())" />
              <ns0:gender>
                <xsl:variable name="var:v8" select="userCSharp:MyConcat($var:v7)" />
                <xsl:attribute name="value">
                  <xsl:value-of select="$var:v8" />
                </xsl:attribute>
              </ns0:gender>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
      </xsl:for-each>
      <ns0:address>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:N3_SubscriberAddress">
                <xsl:variable name="var:v7" select="userCSharp:StringConcat(string(N301_SubscriberAddressLine/text()) , string(N302_SubscriberAddressLine/text()))" />
                <ns0:line>
                  <xsl:attribute name="value">
                    <xsl:value-of select="$var:v7" />
                  </xsl:attribute>
                </ns0:line>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:N4_SubscriberCity_State_ZIPCode">
                <ns0:city>
                  <xsl:attribute name="value">
                    <xsl:value-of select="N401_SubscriberCityName/text()" />
                  </xsl:attribute>
                </ns0:city>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:N4_SubscriberCity_State_ZIPCode">
                <ns0:state>
                  <xsl:if test="N402_SubscriberStateCode">
                    <xsl:attribute name="value">
                      <xsl:value-of select="N402_SubscriberStateCode/text()" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:state>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:N4_SubscriberCity_State_ZIPCode">
                <ns0:postalCode>
                  <xsl:if test="N403_SubscriberPostalZoneorZIPCode">
                    <xsl:attribute name="value">
                      <xsl:value-of select="N403_SubscriberPostalZoneorZIPCode/text()" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:postalCode>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:N4_SubscriberCity_State_ZIPCode">
                <ns0:country>
                  <xsl:if test="N404_CountryCode">
                    <xsl:attribute name="value">
                      <xsl:value-of select="N404_CountryCode/text()" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:country>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
      </ns0:address>
      <ns0:maritalStatus>
        <xsl:for-each select="s0:TS270_2000A_Loop">
          <xsl:for-each select="s0:TS270_2000B_Loop">
            <xsl:for-each select="s0:TS270_2000C_Loop">
              <xsl:for-each select="s0:TS270_2100C_Loop/s0:DMG_SubscriberDemographicInformation">
                <ns0:text>
                  <xsl:if test="DMG04_MaritalStatusCode">
                    <xsl:attribute name="value">
                      <xsl:value-of select="DMG04_MaritalStatusCode/text()" />
                    </xsl:attribute>
                  </xsl:if>
                </ns0:text>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
      </ns0:maritalStatus>
    </ns0:Patient>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
///*Uncomment the following code for a sample Inline C# function
//that concatenates two inputs. Change the number of parameters of
//this function to be equal to the number of inputs connected to this functoid.*/

//public string MyConcat(string param1, string param2)
//{
//	return param1+param2;
//}
public string GetGUID() 
{ 
     return System.Guid.NewGuid().ToString(); 
} 

public string DateCurrentDateTime()
{
	DateTime dt = DateTime.Now;
	string curdate = dt.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
	string curtime = dt.ToString("T", System.Globalization.CultureInfo.InvariantCulture);
	string retval = curdate + "T" + curtime;
	return retval;
}


public string StringConcat(string param0)
{
   return param0;
}


public string StringConcat(string param0, string param1, string param2, string param3, string param4, string param5, string param6, string param7)
{
   return param0 + param1 + param2 + param3 + param4 + param5 + param6 + param7;
}


public string StringConcat(string param0, string param1)
{
   return param0 + param1;
}
public string MyConcat(string param1)
{

if (param1=="F")
  return "female";
else
  return "male";
	
}



]]></msxsl:script>
</xsl:stylesheet>