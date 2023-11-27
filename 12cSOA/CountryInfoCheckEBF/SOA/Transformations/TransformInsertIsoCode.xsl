<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns0="http://tempuri.org/PurchaseOrderSchema.xs" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/COUNTRY_ISO_CODE_TABLE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://xmlns.oracle.com/Service/CountryInfoCheckEBF/CountryInfoCheckEBF"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/12cSOA/CountryInfoCheckEBF/COUNTRY_ISO_CODE_TABLE"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/resources/CountryInfoCheckEBF.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UlkeISOKodIstek" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/resources/CountryInfoCheckEBF.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UlkeISOKodYanit" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
            <oracle-xsl-mapper:param name="InvokeCountryInfoCheckProv_alISOKod_OutputVariable.payload"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/COUNTRY_ISO_CODE_TABLE.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CountryIsoCodeTableCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/COUNTRY_ISO_CODE_TABLE"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [THU AUG 03 16:25:10 EEST 2023].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InvokeCountryInfoCheckProv_alISOKod_OutputVariable.payload"/>
   <xsl:template match="/">
      <tns:CountryIsoCodeTableCollection>
         <tns:CountryIsoCodeTable>
            <xsl:if test="/ns0:UlkeISOKodIstek/ns0:sUlkeAdi">
               <tns:countryName>
                  <xsl:value-of select="/ns0:UlkeISOKodIstek/ns0:sUlkeAdi"/>
               </tns:countryName>
            </xsl:if>
            <xsl:if test="$InvokeCountryInfoCheckProv_alISOKod_OutputVariable.payload/ns0:UlkeISOKodYanit/ns0:UlkeISOKodSonuc">
               <tns:countryIsoCode>
                  <xsl:value-of select="$InvokeCountryInfoCheckProv_alISOKod_OutputVariable.payload/ns0:UlkeISOKodYanit/ns0:UlkeISOKodSonuc"/>
               </tns:countryIsoCode>
            </xsl:if>
         </tns:CountryIsoCodeTable>
      </tns:CountryIsoCodeTableCollection>
   </xsl:template>
</xsl:stylesheet>
