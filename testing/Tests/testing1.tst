<?xml version="1.0" ?>

<TestCase name="testing1" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/22/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/22/2018" host="inbasdpc10722" />
</meta>

<id>A7E1B70E2C0B11E8BD16D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tNzIzOTUzOTU5</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="http POST /api/Accounts/Dna/" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="AB11E8F52C0B11E8BD16D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.http POST /api/Accounts/Dna/.rsp</valueToFilterKey>
      <headerKey>authorization</headerKey>
      <prop>Auth</prop>
      </Filter>

<url>http://localhost:9209/api/Accounts/Dna/</url>
<content>{&quot;ClientPlatform&quot;:{&quot;Identifier&quot;:&quot;iOS&quot;,&quot;ConnectionType&quot;:&quot;LAN&quot;,&quot;FormFactor&quot;:&quot;Phone&quot;,&quot;Version&quot;:&quot;9.3.2&quot;,&quot;Channel&quot;:&quot;CustomerMobile10&quot;,&quot;ClientSWVersion&quot;:&quot;0.1.53.0006&quot;,&quot;Model&quot;:&quot;iPhone7,2&quot;,&quot;IpAddress&quot;:&quot;0.0.0.0&quot;,&quot;UUID&quot;:&quot;7CFF33F8-BA01-4767-8978-390540CFEA77&quot;},&quot;Uri&quot;:&quot;/api/Accounts/Dna&quot;}</content>
<content-type></content-type>
<data-type>text</data-type>
      <header field="HTTP-Version" value="HTTP/1.1" />
      <header field="content-type" value="application/json" />
      <header field="authorization" value="Basic MC4wLjAuMDptb2JpbGVfZGVtbzFAbDMuY29tOkFiYzEyMzQ1Njc4" />
<httpMethod>POST</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="A7E1B7142C0B11E8BD16D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="A7E1B7122C0B11E8BD16D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="A7E1B7102C0B11E8BD16D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
