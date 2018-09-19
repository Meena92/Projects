<?xml version="1.0" ?>

<TestCase name="rrpair1" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="04/09/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="04/09/2018" host="inbasdpc10722" />
</meta>

<id>85CD1DA138B811E8AF09D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tMTUwNDg3MTMxNA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="http GET /tpmRest/v1/participants/enabledProtocolPropertyValues/{URLPARAM0}/" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="8BD4B18138B811E8AF09D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<url>http://localhost:7015/tpmRest/v1/participants/enabledProtocolPropertyValues/124</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="85CD1DA738B811E8AF09D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="85CD1DA538B811E8AF09D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="85CD1DA338B811E8AF09D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
