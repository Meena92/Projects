<?xml version="1.0" ?>

<TestCase name="test34" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/08/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/08/2018" host="inbasdpc10722" />
</meta>

<id>13EFD6F921C111E8B1E3D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tMTI5NDQzNTA3MA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="http PUT /rest-example/control/users/save" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="16B8BB9021C111E8B1E3D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<url>http://localhost:5080/rest-example/control/users/save</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>PUT</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="13EFD6FF21C111E8B1E3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="13EFD6FD21C111E8B1E3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="13EFD6FB21C111E8B1E3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
