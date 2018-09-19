<?xml version="1.0" ?>

<TestCase name="smp" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/24/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/29/2017" host="LP-R9WHCBM" />
</meta>

<id>31A5D04A88C311E7A3B3E49B20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz0tNTQ2MjIwMjQy</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Web Service createOrderEvent[Shipped]" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="EC839D218C7511E7A6A9DEC320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Java Script Step" > 


      <!-- Data Sets -->
<readrec>Read Data for createorderevent</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Abort the test for any serbice response failure</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification</xpathq>
<nsMap0>ns=http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2</nsMap0>
<nsMap1>=</nsMap1>
<nsMap2>SOAP-ENV=http://schemas.xmlsoap.org/soap/envelope/</nsMap2>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-26/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>https://qattbco523.UNIX.GSM1900.ORG:5116/Event/Publish/OrderEvent</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjxzb2FwZW52OkVudmVsb3BlIHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiPg0KICA8c29hcGVudjpCb2R5Pg0KPG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+DQoJCQk8ZXZlbnRTdW1tYXJ5IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMxPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiIHhtbG5zOlNPQVA9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIj4NCgkJCQk8ZXZlbnRUeXBlPnt7ZXZlbnRUeXBlfX08L2V2ZW50VHlwZT4NCgkJCQk8ZXZlbnREYXRlVGltZT4yMDE3LTA4LTA3VDE0OjEzOjMyPC9ldmVudERhdGVUaW1lPg0KCQkJCTxub3RpZmljYXRpb25MaXN0Lz4NCgkJCTwvZXZlbnRTdW1tYXJ5Pg0KCQkJPG9yZGVyTGlzdCB4bWxuczpTT0FQLUVOVj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5zMT0iaHR0cDovL3NlcnZpY2VzLnRtb2JpbGUuY29tL29lIiB4bWxuczpTT0FQPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyI+DQoJCQkJPG9yZGVyPg0KCQkJCQk8b3JkZXJTdW1tYXJ5Pg0KCQkJCQkJPGJhbj57e0JBTn19PC9iYW4+DQoJCQkJCQk8bXNpc2RuPnt7TVNJU0ROfX08L21zaXNkbj4NCgkJCQkJCTxjaGFubmVsPjEyPC9jaGFubmVsPg0KCQkJCQkJPHN0b3JlSWQ+e3tzdG9yZUlkfX08L3N0b3JlSWQ+DQoJCQkJCQk8b3JpZ2luYWxTeXN0ZW1JZD5TVFJFPC9vcmlnaW5hbFN5c3RlbUlkPg0KCQkJCQkJPG9yZGVyTnVtYmVyPnt7b3JkZXJJZH19PC9vcmRlck51bWJlcj4NCgkJCQkJCTxzYXBPcmRlck51bWJlcj43MDAwMjA3MzIxPC9zYXBPcmRlck51bWJlcj4NCgkJCQkJCTxvcmRlclN0YXR1cz57e29yZGVyU3RhdHVzX1JQfX08L29yZGVyU3RhdHVzPg0KCQkJCQkJPG9yZGVyVHlwZT5aVzAxPC9vcmRlclR5cGU+DQoJCQkJCQk8b3JkZXJEYXRlVGltZT4yMDE3LTA4LTA3VDE0OjEzOjMwPC9vcmRlckRhdGVUaW1lPg0KCQkJCQkJPG9yZGVySXRlbT4NCgkJCQkJCQk8bXNpc2RuPnt7TVNJU0ROfX08L21zaXNkbj4NCgkJCQkJCQk8ZGVzY3JpcHRpb24+U0FNIE45MjBUIE5PVEUgNSAzMkcgQkxLIEtJVDwvZGVzY3JpcHRpb24+DQoJCQkJCQkJPGl0ZW1UeXBlPkRBVEs8L2l0ZW1UeXBlPg0KCQkJCQkJCTxza3U+e3tkZWZfc2t1fX08L3NrdT4NCgkJCQkJCQk8cXVhbnRpdHk+MS4wMDAgPC9xdWFudGl0eT4NCgkJCQkJCQk8b3JkZXJEZXRhaWxJZD4xMDAyMjE4NzM8L29yZGVyRGV0YWlsSWQ+DQoJCQkJCQkJPHN1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+ZmFsc2U8L3N1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+DQoJCQkJCQkJPGRlZmVjdGl2ZVNLVT57e2RlZl9za3V9fTwvZGVmZWN0aXZlU0tVPg0KCQkJCQkJCTxkZWZlY3RpdmVTS1VEZXNjcmlwdGlvbj5TQU0gTjkyMFQgTk9URSA1IDMyRyBCTEsgS0lUPC9kZWZlY3RpdmVTS1VEZXNjcmlwdGlvbj4NCgkJCQkJCQk8ZGVmZWN0aXZlSU1FST57e2ltZWl9fTwvZGVmZWN0aXZlSU1FST4NCgkJCQkJCTwvb3JkZXJJdGVtPg0KCQkJCQkJPGNvbW1lbnRzPkhhbmRzZXQvRGV2aWNlIGlzIHJlYWR5IGZvciBwaWNrdXAgYXQgU3RvcmUgNDUxPC9jb21tZW50cz4NCgkJCQkJPC9vcmRlclN1bW1hcnk+DQoJCQkJCTxvcmRlclNoaXBUb0FkZHJlc3M+DQoJCQkJCQk8bmFtZT5UTSAtIFNVUEVSTUFMTDwvbmFtZT4NCgkJCQkJCTxhZGRyZXNzTGluZTE+MTEwMSBTVVBFUk1BTEwgV0FZIFNURSAxMzE3PC9hZGRyZXNzTGluZTE+DQoJCQkJCQk8Y2l0eT5BVUJVUk48L2NpdHk+DQoJCQkJCQk8emlwY29kZT45ODAwMS02NTI2PC96aXBjb2RlPg0KCQkJCQkJPHN0YXRlPldBPC9zdGF0ZT4NCgkJCQkJCTxzaGlwcGluZ01ldGhvZD4wNDwvc2hpcHBpbmdNZXRob2Q+DQoJCQkJCTwvb3JkZXJTaGlwVG9BZGRyZXNzPg0KCQkJCQk8b3JkZXJCaWxsVG9BZGRyZXNzPg0KCQkJCQkJPG5hbWU+VE9CWSBLRU5PQkk8L25hbWU+DQoJCQkJCQk8YWRkcmVzc0xpbmUxPjExMDEgT3V0bGV0IENvbGxlY3Rpb24gV2F5IFN0ZSAxMzE3PC9hZGRyZXNzTGluZTE+DQoJCQkJCQk8Y2l0eT5BdWJ1cm48L2NpdHk+DQoJCQkJCQk8emlwY29kZT4zMDM0NjwvemlwY29kZT4NCgkJCQkJCTxzdGF0ZT5HQTwvc3RhdGU+DQoJCQkJCTwvb3JkZXJCaWxsVG9BZGRyZXNzPg0KCQkJCTwvb3JkZXI+DQoJCQk8L29yZGVyTGlzdD4NCgkJPC9uczA6Q3JlYXRlT3JkZXJFdmVudFJlcXVlc3Q+DQoNCgk8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>createOrderEvent</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Java Script Step" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="E39ED3A38C9211E7A6A9DEC320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service GetCustomerOrderDetails" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Thread.sleep(240000);</script>
    </Node>


    <Node name="Web Service GetCustomerOrderDetails" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="C2E4F00C88AE11E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.Web Service GetCustomerOrderDetails.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/ISF/getcustomerorderdetailsresponse.txt</file>
      <append>false</append>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Web Service GetCustomerOrderDetails.rsp</valueToFilterKey>
      <tag>ns16:status</tag>
      <tagn>1</tagn>
      <prop>order_status</prop>
      </Filter>


      <!-- Data Sets -->
<readrec>Read Rows from Excel File</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion~2 checks for: true is of type: XML XPath Assert.</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification/ns:FaultMessage</xpathq>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/Order.wsdl</wsdl>
<endpoint>http://qattbco522.unix.gsm1900.org:8115/Enterprise</endpoint>
<targetNamespace>http://www.t-mobile.com/es/order</targetNamespace>
<service>Order</service>
<port>Order</port>
<operation>GetCustomerOrderDetails</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPg0KICAgPHNvYXA6Qm9keT4NCiAgICAgIDxuczEzOmVzaUdldEN1c3RvbWVyT3JkZXJEZXRhaWxzUmVxdWVzdCB4bWxuczpuczEzPSJodHRwOi8vd3d3LnQtbW9iaWxlLmNvbS9lc2kvb3JkZXIvZ2V0Y3VzdG9tZXJvcmRlcmRldGFpbHMiPg0KICAgICAgICAgPHJlcXVlc3RIZWFkZXIgeG1sbnM9Imh0dHA6Ly93d3cudC1tb2JpbGUuY29tL2VzaS9iYXNlIj4NCiAgICAgICAgICAgIDxhcHBsaWNhdGlvbklkPkFDVUk8L2FwcGxpY2F0aW9uSWQ+DQogICAgICAgICAgICA8Y2hhbm5lbElkPnt7Y2hhbm5lbElkfX08L2NoYW5uZWxJZD4NCiAgICAgICAgICAgIDxvcGVyYXRvcklkPjE5OTE8L29wZXJhdG9ySWQ+DQogICAgICAgICAgICA8cmVxdWVzdFN0YXJ0VGltZT4yMDE3LTA4LTE3VDE3OjMzOjU4LTA3OjAwPC9yZXF1ZXN0U3RhcnRUaW1lPg0KICAgICAgICAgICAgPHRyYWNraW5nSWQ+MjA3NzcwNjk0MDI4MTgxNjc8L3RyYWNraW5nSWQ+DQogICAgICAgICAgICA8dmVyc2lvbj5OQTwvdmVyc2lvbj4NCiAgICAgICAgICAgIDxjbGllbnRJZD57e2NsaWVudElkfX08L2NsaWVudElkPg0KICAgICAgICAgICAgPGFwcGxpY2F0aW9uVXNlcklkPnt7YXBwbGljYXRpb25Vc2VySWR9fTwvYXBwbGljYXRpb25Vc2VySWQ+DQogICAgICAgICAgICA8c3RvcmVJZD57e3N0b3JlSWR9fTwvc3RvcmVJZD4NCiAgICAgICAgICAgIDxkZWFsZXJDb2RlPnt7ZGVhbGVyQ29kZX19PC9kZWFsZXJDb2RlPg0KICAgICAgICAgICAgPHNlbmRlcklkPnt7c2VuZGVySWR9fTwvc2VuZGVySWQ+DQogICAgICAgICAgICA8d29ya2Zsb3dJZD4yMDc3NzA2OTQwMjgxODE2Nzwvd29ya2Zsb3dJZD4NCiAgICAgICAgIDwvcmVxdWVzdEhlYWRlcj4NCiAgICAgICAgIDxuczEzOm9yZGVySWQ+UzAwMDEwNTQ5NjwvbnMxMzpvcmRlcklkPg0KICAgICAgICAgPG5zMTM6cmV0cmlldmVFSVBpbmZvPnRydWU8L25zMTM6cmV0cmlldmVFSVBpbmZvPg0KICAgICAgICAgPG5zMTM6ZWxpZ2liaWxpdHlGb3JSZXR1cm4+dHJ1ZTwvbnMxMzplbGlnaWJpbGl0eUZvclJldHVybj4NCiAgICAgICAgIDxuczEzOmVsaWdpYmxlRm9yUmVmdW5kPnRydWU8L25zMTM6ZWxpZ2libGVGb3JSZWZ1bmQ+DQogICAgICAgICA8bnMxMzppbmNsdWRlV2FycmFudHlEZXRhaWxzPnRydWU8L25zMTM6aW5jbHVkZVdhcnJhbnR5RGV0YWlscz4NCiAgICAgICAgIDxuczEzOmRhdGFTb3VyY2U+T01TPC9uczEzOmRhdGFTb3VyY2U+DQogICAgICAgICA8bnMxMzppbmNsdWRlUHJvbW9EZXRhaWxzPnRydWU8L25zMTM6aW5jbHVkZVByb21vRGV0YWlscz4NCiAgICAgIDwvbnMxMzplc2lHZXRDdXN0b21lck9yZGVyRGV0YWlsc1JlcXVlc3Q+DQogICA8L3NvYXA6Qm9keT4NCjwvc29hcDpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>/ORDER/CUSTOMERORDERDETAILS/GET</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="31A5D04C88C311E7A3B3E49B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="31A5D04E88C311E7A3B3E49B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="31A5D05088C311E7A3B3E49B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createorderevent" atend="end" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>createorderevent_RP</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Rows from Excel File" atend="end" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>GetCustomerOrderDetails</sheetname>
    </DataSet>

</TestCase>
