<?xml version="1.0" ?>

<TestCase name="Task3unique_db" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="06/20/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/03/2018" host="inbasdpc10722" />
</meta>

<id>5689E886558111E7BB81D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPTEyNTcwNzA5ODU=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="JDBC_unique" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="5A8FDFFC558111E7BB81D8CB8A8AB1DA" 
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
<password_enc>la625e21f2a2a7b59c9c4f809cd0b2b02fce90e79c02b8dfda35c4892ddc9ba9b00b4</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>true</usePool>
<sql>select * from emp_utab</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="5689E888558111E7BB81D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="5689E88A558111E7BB81D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="5689E88C558111E7BB81D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
