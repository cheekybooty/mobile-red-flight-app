<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="com.fliyinghigh/operations/flightservice/nxsd" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:tns="com.flyinghigh/operations/flightservice"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns1="http://xmlns.oracle.com/FlyingHighAirlineProxyServices/FlightService/FlightService"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:inp1="http://TargetNamespace.com/FlightService_retrieveFlightDetails_response"
                xmlns:com="com.flyinghigh/operations/common">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../Resources/FlightRestService.wsdl"/>
        <oracle-xsl-mapper:rootElement name="flightStatusUpdateRequest"
                                       namespace="com.fliyinghigh/operations/flightservice/nxsd"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../XMLSchema_417271354.xsd"/>
        <oracle-xsl-mapper:rootElement name="sendFlightStatusUpdateRequest"
                                       namespace="com.flyinghigh/operations/flightservice"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SAT FEB 28 08:10:07 CET 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:sendFlightStatusUpdateRequest>
      <tns:FlightCode>
        <com:CarrierCode>
          <xsl:value-of select="substring (ns0:flightStatusUpdateRequest/ns0:FlightCode, 1,2)"/>
        </com:CarrierCode>
        <com:FlightNumber>
          <xsl:value-of select="substring (ns0:flightStatusUpdateRequest/ns0:FlightCode, 3 )"/>
        </com:FlightNumber>

      </tns:FlightCode>
      <tns:FlightStatus>
        <xsl:value-of select="/ns0:flightStatusUpdateRequest/ns0:FlightStatus"/>
      </tns:FlightStatus>
      <tns:FlightDate>
        <xsl:value-of select="/ns0:flightStatusUpdateRequest/ns0:FlightDate"/>
      </tns:FlightDate>
    </tns:sendFlightStatusUpdateRequest>
  </xsl:template>
</xsl:stylesheet>
