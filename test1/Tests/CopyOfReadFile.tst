<?xml version="1.0" ?>

<TestCase name="CopyOfReadFile" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/27/2018" host="INHYIZLP00225" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/12/2018" host="inbasdpc10722" />
</meta>

<id>503F244B236E11E8B1E3D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPTExMzI4MDE0ODQ=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Fetch RR Pair Dir" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          uid="503F4B5C236E11E8B1E3D8CB8A8AB1DA" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Read Response" > 


      <!-- Data Sets -->
<readrec>Load a Set of File Names</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Ensure Property Matches Expression" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>Assertion name: Ensure Property Matches Expression checks for: true is of type: Property Value Expression.</log>
<then>Fetch RR Pair Dir</then>
<valueToAssertKey></valueToAssertKey>
        <prop>Load a Set of File Names</prop>
        <param>rsp</param>
</CheckResult>

    </Node>


    <Node name="Read Response" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="503F4B5D236E11E8B1E3D8CB8A8AB1DA" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Fetch Response Path" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterProperty2Property">
        <valueToFilterKey>LASTRESPONSE</valueToFilterKey>
      <toProp>ServiceRequest</toProp>
      <pre>false</pre>
      <post>true</post>
      </Filter>

<Loc>{{Load a Set of File Names}}</Loc>
<charset>DEFAULT</charset>
<PropKey></PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Fetch Response Path" log=""
          type="com.itko.lisa.test.UserScriptNode" 
          version="1" 
          uid="5042589E236E11E8B1E3D8CB8A8AB1DA" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Read Expected Response" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<language>BeanShell</language>
<copyProps>TestExecProps</copyProps>
<script>String reqPath=testExec.getStateValue(&quot;Load a Set of File Names&quot;);&#13;&#10;testExec.setStateValue(&quot;reqPath&quot;,reqPath);&#13;&#10;String resPath= reqPath.replace(&quot;req&quot;,&quot;rsp&quot;);&#13;&#10;testExec.setStateValue(&quot;resPath&quot;,resPath);&#13;&#10;&#13;&#10;</script>
    </Node>


    <Node name="Read Expected Response" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="5042589F236E11E8B1E3D8CB8A8AB1DA" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Call Service" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterProperty2Property">
        <valueToFilterKey>LASTRESPONSE</valueToFilterKey>
      <toProp>Response_Exp</toProp>
      <pre>false</pre>
      <post>true</post>
      </Filter>

<Loc>{{resPath}}</Loc>
<charset>DEFAULT</charset>
<PropKey></PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Call Service" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="A9A40BB2237B11E8B1E3D8CB8A8AB1DA" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Compare Response" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterProperty2Property">
        <valueToFilterKey>LASTRESPONSE</valueToFilterKey>
      <toProp>Response_Acct</toProp>
      <pre>false</pre>
      <post>true</post>
      </Filter>

<wsdl></wsdl>
<endpoint>http://localhost:9202</endpoint>
<targetNamespace></targetNamespace>
<service></service>
<port></port>
<operation></operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">e3tTZXJ2aWNlUmVxdWVzdH19</request>
<style>document</style>
<use>literal</use>
<soapAction></soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>l5a7da1d1d004da821c58892b3a3965ca2ea7649195d01050deed75dda860ac09</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>l0a8b7d9452aa170fa30b925ce1dd196321567f240c6c9898be6c0a3776ba5d0e</ssl-key-password-enc>
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


    <Node name="Compare Response" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          uid="50427FB1236E11E8B1E3D8CB8A8AB1DA" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Fetch RR Pair Dir" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Properties Are Equal" type="com.itko.lisa.test.AssertPropsEqual">
<log>Assertion name: Ensure Properties Are Equal checks for: false is of type: Assert Properties Equal.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <prop1>Response_Acct</prop1>
        <prop2>Response_Exp</prop2>
</CheckResult>

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="50427FB2236E11E8B1E3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="50427FB3236E11E8B1E3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="50427FB4236E11E8B1E3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DirectoryFilesDataSet" name="Load a Set of File Names" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAAYTG9hZCBhIFNldCBvZiBGaWxlIE5hbWVzdABBRDovTmV3IGZvbGRlci9BcnVuYWJoYS9DVC9DVCBQT0MvQVBJIFRlc3QvMV9Qb3N0IENvZGUgUmVxdWVzdC50eHR4</sample>
    <file-dirPath>E:/Workspace/testard</file-dirPath>
    <filePattern>*</filePattern>
    <includeSubDirs>false</includeSubDirs>
    </DataSet>

</TestCase>
