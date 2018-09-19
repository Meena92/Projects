<?xml version="1.0" ?>

<TestCase name="json_path" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="06/19/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/03/2018" host="inbasdpc10722" />
</meta>

<id>40295FF754D511E78802D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPS0yMTIzNzY5MDY0</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Parse Text as Response" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="5967791054D511E78802D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="JDBC" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <jsonPath>$.user.emailAddress</jsonPath>
      <valueProp>Email</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <jsonPath>$.user.firstName</jsonPath>
      <valueProp>FName</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <jsonPath>$.user.lastName</jsonPath>
      <valueProp>LName</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <jsonPath>$.user.password</jsonPath>
      <valueProp>PWD</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <jsonPath>$.user.username</jsonPath>
      <valueProp>UName</valueProp>
      <lengthProp></lengthProp>
      </Filter>

<text>ew0KInVzZXIiOnsNCiJlbWFpbEFkZHJlc3MiOiJhYmNAdGVzdC5jb20iLA0KImZpcnN0TmFtZSI6IkFiYyIsDQoibGFzdE5hbWUiOiJjZGUiLA0KInBhc3N3b3JkIjoiYmJiYiIsDQoidXNlcm5hbWUiOiJhYmNfY2RlIg0KfQ0KfQ==</text>
<propKey></propKey>
    </Node>


    <Node name="JDBC" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="47E79230071B11E8BB03D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<driver>org.apache.derby.jdbc.ClientDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:derby://localhost:1528/database/lisa.db</connect>
<user>sa</user>
<password_enc>l784a016f85e88cf96a9ebed61149d7d3527e847c40bc29c70d152d804e2d69c37535</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>true</usePool>
<sql>--Create table food ( name varchar(50), price varchar(50),calories int)&#13;&#10;--select * from food&#13;&#10;&#13;&#10;insert into table food ( </sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="40295FFD54D511E78802D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="40295FFB54D511E78802D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="40295FF954D511E78802D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
