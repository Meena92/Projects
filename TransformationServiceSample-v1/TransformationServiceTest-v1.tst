<?xml version="1.0" ?>

<TestCase name="TransformationServiceTest-v1" version="5">

<meta>
   <create version="8.0.1" buildNumber="8.0.1.644" author="admin" date="08/06/2015" host="DVTBLISAPP002" />
   <lastEdited version="8.3.0" buildNumber="8.3.0.241" author="admin" date="09/09/2015" host="DVTBLISAPP002" />
</meta>

<id>AF4918CA56C411E59527BE4B20524153</id>
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
          uid="AF4918CB56C411E59527BE4B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


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
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeG1sbnM6eHNkPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOndlYj0iaHR0cDovL3dlYnJlY2VpdmVyLyI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgIDxSZXF1ZXN0Pg0KCQkJPGZpZWxkMT5yZXExPC9maWVsZDE+DQoJPC9SZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="AF4918CE56C411E59527BE4B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="AF4918CD56C411E59527BE4B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="AF4918CC56C411E59527BE4B20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
