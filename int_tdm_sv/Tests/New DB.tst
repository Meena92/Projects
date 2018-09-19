<?xml version="1.0" ?>

<TestCase name="New DB" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/01/2018" host="BANTM340003956" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/13/2018" host="inbasdpc10722" />
</meta>

<id>819C547E073411E88CAA7446A0C104D6</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPS0yMDcxNDMzNDg5</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="JDBC" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="B895538108CA11E8957A7446A0C104D6" 
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
<password_enc>l8a2f0732ae29cdce6d42118f318c78faec6e7a0b3493da3cf8f10137532aab972c32</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>true</usePool>
<sql>Select * from ITEMS_Table&#13;&#10;--Delete from ITEMS_Table&#13;&#10;</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="819C5484073411E88CAA7446A0C104D6" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="819C5482073411E88CAA7446A0C104D6" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="819C5480073411E88CAA7446A0C104D6" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
