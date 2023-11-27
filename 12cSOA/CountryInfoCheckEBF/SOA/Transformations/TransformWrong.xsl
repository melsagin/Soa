<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns0="http://tempuri.org/PurchaseOrderSchema.xs" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://xmlns.oracle.com/Service/CountryInfoCheckEBF/CountryInfoCheckEBF">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/resources/CountryInfoCheckEBF.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UlkeISOKodIstek" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/resources/CountryInfoCheckEBF.wsdl"/>
            <oracle-xsl-mapper:rootElement name="TumUlkeBilgileriYanit" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [TUE AUG 01 10:52:21 EEST 2023].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:TumUlkeBilgileriYanit>
            <ns0:pReqInfo>
               <xsl:if test="/ns0:UlkeISOKodIstek/ns0:pReqInfo/ns0:TRANSACTION_ID">
                  <ns0:TRANSACTION_ID>
                     <xsl:value-of select="/ns0:UlkeISOKodIstek/ns0:pReqInfo/ns0:TRANSACTION_ID"/>
                  </ns0:TRANSACTION_ID>
               </xsl:if>
               <ns0:RETURN_CODE>921</ns0:RETURN_CODE>
               <ns0:RETURN_MESSAGE>Ülke adı geçersizdir.</ns0:RETURN_MESSAGE>
            </ns0:pReqInfo>
      </ns0:TumUlkeBilgileriYanit>
   </xsl:template>
</xsl:stylesheet>