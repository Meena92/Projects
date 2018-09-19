<?xml version="1.0" ?>

<TestCase name="test-data-driven-http-rest" version="5">

<meta>
   <create version="8.5.0" buildNumber="8.5.0.58" author="admin" date="09/14/2015" host="localhost" />
   <lastEdited version="0.0" buildNumber="0.0.0.0" author="admin" date="10/12/2016" host="localhost" />
</meta>

<id>AFCE7A755B1A11E58280005056C00008</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0wLjAgKDAuMC4wLjApJm5vZGVzPS0yMjE1MDc5Mg==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="http GET /3/movie/49047/" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B4D3B9F75B1A11E58280005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="http GET /3/movie/49163" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains &quot;Gravity&quot;" type="com.itko.lisa.test.CheckResultContains">
<log>Response did not contain &quot;Gravity&quot;</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>Gravity</param>
</CheckResult>

<url>http://localhost:8001/3/movie/49047?api_key=cd1d7f222b868aec8b843a48baa16df3</url>
<data-type>text</data-type>
      <header field="Accept" value="application/json" />
<httpMethod>GET</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="http GET /3/movie/49163" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B4D3B9F75B1A11E58280005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="http GET /3/movie/49381" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains &quot;The Matrix&quot;" type="com.itko.lisa.test.CheckResultContains">
<log>Response does not contain &quot;The Matrix&quot;</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>The Matrix</param>
</CheckResult>

<url>http://localhost:8001/3/movie/49163?api_key=cd1d7f222b868aec8b843a48baa16df119</url>
<data-type>text</data-type>
      <header field="Accept" value="application/json" />
<httpMethod>GET</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="http GET /3/movie/49381" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B4D3B9F75B1A11E58280005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="GET empty column value" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains &quot;Seven Samurai&quot;" type="com.itko.lisa.test.CheckResultContains">
<log>Response does not contain &quot;Seven Samurai&quot;</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>Seven Samurai</param>
</CheckResult>

<url>http://localhost:8001/3/movie/49381?api_key=cd1d7f222b868aec8b843a48baa16df337</url>
<data-type>text</data-type>
      <header field="Accept" value="application/json" />
<httpMethod>GET</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="GET empty column value" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B0CEBA81908F11E6B40D60F81DD00CF4" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="http GET /3/movie/notfound" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains empty genre tag" type="com.itko.lisa.test.CheckResultContains">
<log>Response does not contain &quot;Seven Samurai&quot;</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;genre&gt;&lt;/genre&gt;</param>
</CheckResult>

<url>http://localhost:8001/3/movie/49382?api_key=cd1d7f222b868aec8b843a48baa16df337</url>
<content-type></content-type>
<data-type>text</data-type>
      <header field="Accept" value="application/json" />
<httpMethod>GET</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="http GET /3/movie/notfound" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B4D3B9F75B1A11E58280005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains &quot;404 Not Found&quot;" type="com.itko.lisa.test.CheckResultContains">
<log>Response does not contain &quot;404 Not Found&quot;</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>404 Not Found</param>
</CheckResult>

<url>http://localhost:8001/3/movie/notfound?api_key=cd1d7f222b868aec8b843a48baa16df337</url>
<content-type></content-type>
<data-type>text</data-type>
      <header field="Accept" value="application/json" />
<httpMethod>GET</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="AFCE7A775B1A11E58280005056C00008" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="AFCE7A795B1A11E58280005056C00008" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="AFCE7A7B5B1A11E58280005056C00008" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
