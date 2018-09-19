<?xml version="1.0" ?>

<TestCase name="type_parse" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/06/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/06/2018" host="inbasdpc10722" />
</meta>

<id>658E48AE0AFC11E8A81ED8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tMjA3MTQzMzQ4OQ==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="JDBC" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="ABCE4A640B0711E8A81ED8CB8A8AB1DA" 
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
<password_enc>l79f9940cdfc5601beb0a52d9fdc2dc49b61493e0127d30cc94b5d6c4e566769289b1</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>true</usePool>
<sql>--Create table Customer_BT ( Custid varchar(50) primary key,Itemname varchar(50))&#13;&#10;Select * from Customer_BT</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="658E48B40AFC11E8A81ED8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="658E48B20AFC11E8A81ED8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="658E48B00AFC11E8A81ED8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
