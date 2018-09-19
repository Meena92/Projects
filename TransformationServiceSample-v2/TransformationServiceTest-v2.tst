<?xml version="1.0" ?>

<TestCase name="TransformationServiceTest-v2" version="5">

<meta>
   <create version="8.0.1" buildNumber="8.0.1.644" author="admin" date="08/06/2015" host="DVTBLISAPP002" />
   <lastEdited version="8.3.0" buildNumber="8.3.0.241" author="admin" date="09/08/2015" host="DVTBLISAPP002" />
</meta>

<id>FE31513560A11E59527BE4B20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjMuMCAoOC4zLjAuMjQxKSZub2Rlcz0yMjgzOTA4ODY=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Raw SOAP Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="FE31514560A11E59527BE4B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Raw SOAP Request.rsp</valueToFilterKey>
<prop>response_AccountID</prop>
<xpathq>/soapenv:Envelope/soapenv:Body/Response/field1/text()</xpathq>
<nsMap0>soapenv=http://schemas.xmlsoap.org/soap/envelope/</nsMap0>
<nsMap1>web=http://webreceiver/</nsMap1>
<nsMap2>xsd=http://www.w3.org/2001/XMLSchema</nsMap2>
<nsMap3>xsi=http://www.w3.org/2001/XMLSchema-instance</nsMap3>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Raw SOAP Request.req</valueToFilterKey>
<prop>request_AccountID</prop>
<xpathq>/soapenv:Envelope/soapenv:Body/Request/field1/text()</xpathq>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Properties Are Equal" type="com.itko.lisa.test.AssertPropsEqual">
<log>Assertion name: Ensure Properties Are Equal checks for: false is of type: Assert Properties Equal.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <prop1>request_AccountID</prop1>
        <prop2>response_AccountID</prop2>
</CheckResult>

<url>{{ENDPOINT8}}</url>
<action></action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeG1sbnM6eHNkPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOndlYj0iaHR0cDovL3dlYnJlY2VpdmVyLyI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgIDxSZXF1ZXN0Pg0KICAgICAgICAgICAgPFBBTk5PPkFiY2RlNDU2N1g8L1BBTk5PPg0KICAgICAgICAgICAgPEFDQ09VTlROTz4xMjM0NTY3ODkwMTI8L0FDQ09VTlROTz4NCgk8L1JlcXVlc3Q+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="FE31517560A11E59527BE4B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="FE31516560A11E59527BE4B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="FE31515560A11E59527BE4B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
