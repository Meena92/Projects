<?xml version="1.0" ?>

<TestCase name="t2" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="10/25/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="10/26/2017" host="inbasdpc10722" />
</meta>

<id>397D4C37B95911E7BE5BD8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPTM4NDYwNTU5Nw==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Web Service" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="40C130ABB95911E7BE5BD8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<wsdl>file:/C:/Users/mn00365099/Downloads/medicare.wsdl</wsdl>
<endpoint>http://INBASDPC10722:23477</endpoint>
<targetNamespace>http://www.webservicex.net/</targetNamespace>
<service>MediCareSupplier</service>
<port>MediCareSupplierSoap12</port>
<operation>GetSupplierByZipCode</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjxzb2FwZW52OkVudmVsb3BlIHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly93d3cudzMub3JnLzIwMDMvMDUvc29hcC1lbnZlbG9wZSIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIj4NCiAgPHNvYXBlbnY6Qm9keT4NCiAgICA8R2V0U3VwcGxpZXJCeVppcENvZGUgeG1sbnM9Imh0dHA6Ly93d3cud2Vic2VydmljZXgubmV0LyI+DQogICAgICA8IS0temlwIGlzIG9wdGlvbmFsLS0+DQogICAgICA8emlwPjYwNTQxPC96aXA+DQogICAgPC9HZXRTdXBwbGllckJ5WmlwQ29kZT4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</request>
<style>document</style>
<use>literal</use>
<soapAction>http://www.webservicex.net/GetSupplierByZipCode</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>lf84b4566b1cd501ca7fae06e5e8345bd8fa4ee9692e228e8ce2aa10fdfc2b6dc</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>l3e4fcc952be2b6769ec884820fd7e70a9d79395bef182d2be9e3c7c9a591a1cc</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.2</soapVersionUri>
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
          uid="397F4809B95911E7BE5BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="397F480BB95911E7BE5BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="397F6F1DB95911E7BE5BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
