<?xml version="1.0" ?>

<TestCase name="rr1" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="04/05/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="04/05/2018" host="inbasdpc10722" />
</meta>

<id>62A209B7389C11E8AF09D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPS03NTc1NDY2MzU=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="http GET /tpmRest/v1/participants/enabledProtocolPropertyValues/123" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="65283F7D389C11E8AF09D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<url>http://localhost:7011/tpmRest/v1/participants/enabledProtocolPropertyValues/125</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="62A209B9389C11E8AF09D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="62A209BB389C11E8AF09D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="62A209BD389C11E8AF09D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
