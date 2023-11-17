<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns1="http://tempuri.org/PurchaseOrderSchema.xs" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/COUNTRY_FULL_INFO_TABLE" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns1 ns0 mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://xmlns.oracle.com/Service/CountryInfoCheckEBF/CountryInfoCheckEBF"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/12cSOA/CountryInfoCheckEBF/COUNTRY_FULL_INFO_TABLE"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/COUNTRY_FULL_INFO_TABLE.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CountryFullInfoTableCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/COUNTRY_FULL_INFO_TABLE"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/resources/CountryInfoCheckEBF.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UlkeISOKodIstek" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
            <oracle-xsl-mapper:param name="inputVariable.payload"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/resources/CountryInfoCheckEBF.wsdl"/>
            <oracle-xsl-mapper:rootElement name="TumUlkeBilgileriYanit" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [FRI AUG 04 13:58:39 EEST 2023].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="inputVariable.payload"/>
   <xsl:template match="/">
      <ns1:TumUlkeBilgileriYanit>
         <ns1:pReqInfo>
            <xsl:if test="$inputVariable.payload/ns1:UlkeISOKodIstek/ns1:pReqInfo/ns1:TRANSACTION_ID">
               <ns1:TRANSACTION_ID>
                  <xsl:value-of select="$inputVariable.payload/ns1:UlkeISOKodIstek/ns1:pReqInfo/ns1:TRANSACTION_ID"/>
               </ns1:TRANSACTION_ID>
            </xsl:if>
            <ns1:RETURN_CODE>219</ns1:RETURN_CODE>
            <ns1:RETURN_MESSAGE>Veritabanına başarıyla gidildi.</ns1:RETURN_MESSAGE>
         </ns1:pReqInfo>
         <ns1:TumUlkeBilgileriSonuc>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryIsoCode">
               <ns1:sISOKod>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryIsoCode"/>
               </ns1:sISOKod>
            </xsl:if>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryName">
               <ns1:sAd>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryName"/>
               </ns1:sAd>
            </xsl:if>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryCapitalCity">
               <ns1:sBaskent>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryCapitalCity"/>
               </ns1:sBaskent>
            </xsl:if>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryPhoneCode">
               <ns1:sTelefonKod>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryPhoneCode"/>
               </ns1:sTelefonKod>
            </xsl:if>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryContinentCode">
               <ns1:sKitaKod>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryContinentCode"/>
               </ns1:sKitaKod>
            </xsl:if>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryCurrencyIsoCode">
               <ns1:sParaBirimiISOKod>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryCurrencyIsoCode"/>
               </ns1:sParaBirimiISOKod>
            </xsl:if>
            <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryFlag">
               <ns1:sUlkeBayragi>
                  <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryFlag"/>
               </ns1:sUlkeBayragi>
            </xsl:if>
            <ns1:Dilleri>
               <ns1:tDil>
                  <xsl:if test="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryLanguage">
                     <ns1:sAd>
                        <xsl:value-of select="/ns0:CountryFullInfoTableCollection/ns0:CountryFullInfoTable/ns0:countryLanguage"/>
                     </ns1:sAd>
                  </xsl:if>
               </ns1:tDil>
            </ns1:Dilleri>
         </ns1:TumUlkeBilgileriSonuc>
      </ns1:TumUlkeBilgileriYanit>
   </xsl:template>
</xsl:stylesheet>
