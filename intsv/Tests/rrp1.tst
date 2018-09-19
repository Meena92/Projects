<?xml version="1.0" ?>

<TestCase name="rrp1" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="11/09/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="11/09/2017" host="inbasdpc10722" />
</meta>

<id>1CCCE6DFC52D11E7B2A3D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tMTMxMDU3MTcwMg==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="http GET" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="503E4DC2C52D11E7B2A3D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="REST Step" > 

<url>
<proto>http</proto>
<host>localhost</host>
<path>/</path>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>true</params-saved-as-unicode>
    </Node>


    <Node name="REST Step" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="7720FCCAC52D11E7B2A3D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<url>http://localhost/</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="1CCCE6E5C52D11E7B2A3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="1CCCE6E3C52D11E7B2A3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="1CCCE6E1C52D11E7B2A3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
