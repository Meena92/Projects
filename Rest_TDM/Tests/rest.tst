<?xml version="1.0" ?>

<TestCase name="rest" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="11/16/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="11/16/2017" host="inbasdpc10722" />
</meta>

<id>60771F3CA8D11E7A5F3D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tODMxODQ4NDM0</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="http GET /8077/api/v1/books/" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="98F5FCDCA8D11E7A5F3D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<url>http://LISA_RELATIVE_PROJ_ROOT@INBASDPC10722/8077/api/v1/books/?id=24</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="60771F9CA8D11E7A5F3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="60771F7CA8D11E7A5F3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="60771F5CA8D11E7A5F3D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
