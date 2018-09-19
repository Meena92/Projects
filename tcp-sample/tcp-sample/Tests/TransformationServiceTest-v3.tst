<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="TransformationServiceTest-v3" version="5">

<meta>
   <create author="admin" buildNumber="8.0.1.644" date="08/06/2015" host="DVTBLISAPP002" version="8.0.1"/>
   <lastEdited author="admin" buildNumber="8.3.0.241" date="09/09/2015" host="DVTBLISAPP002" version="8.3.0"/>
</meta>

<id>B15D107C0A5E11E8A81ED8CB8A8AB1DA</id>
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

    <Node log="" name="Raw SOAP Request" next="end" quiet="false" think="500-1S" type="com.itko.lisa.ws.RawSOAPNode" uid="B15D107D0A5E11E8A81ED8CB8A8AB1DA" useFilters="true" version="1"> 

<url>{{ENDPOINT14}}</url>
<action/>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeG1sbnM6eHNkPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOndlYj0iaHR0cDovL3dlYnJlY2VpdmVyLyI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgIDxSZXF1ZXN0Pg0KICAgICAgICAgICAgPFBBTk5PPkFic2RlODk3MEE8L1BBTk5PPg0KICAgICAgICAgICAgPEFDQ09VTlROTz4xMjM0NTY3ODkwMTI8L0FDQ09VTlROTz4NCgk8L1JlcXVlc3Q+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="B15D107E0A5E11E8A81ED8CB8A8AB1DA" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="B15D107F0A5E11E8A81ED8CB8A8AB1DA" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="B15D10800A5E11E8A81ED8CB8A8AB1DA" useFilters="true" version="1"> 

    </Node>


</TestCase>