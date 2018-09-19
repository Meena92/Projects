<?xml version="1.0" ?>

<TestCase name="bt" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/03/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/06/2018" host="inbasdpc10722" />
</meta>

<id>D4AB1F09073711E8BB03D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPTgzMzA4NDgwNA==</sig>
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
          uid="D8EC71D2073711E8BB03D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="JDBC" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>ItemName</prop>
<xpathq>/soapenv:Envelope/soapenv:Body/v3:ItemRequest/v3:ItemElement/v3:ItemName/text()</xpathq>
<nsMap0>v3=http://capabilities.nat.bt.com/xsd/EDM/EMP/Item/V3.2</nsMap0>
<nsMap1>soapenv=http://schemas.xmlsoap.org/soap/envelope/</nsMap1>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>CustomerItemNum</prop>
<xpathq>/soapenv:Envelope/soapenv:Body/v3:ItemRequest/v3:ItemElement/v3:CustomerItemNumber/text()</xpathq>
<nsMap0>v3=http://capabilities.nat.bt.com/xsd/EDM/EMP/Item/V3.2</nsMap0>
<nsMap1>soapenv=http://schemas.xmlsoap.org/soap/envelope/</nsMap1>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>BTItemNum</prop>
<xpathq>/soapenv:Envelope/soapenv:Body/v3:ItemRequest/v3:ItemElement/v3:BTItemNumber/text()</xpathq>
<nsMap0>soapenv=http://schemas.xmlsoap.org/soap/envelope/</nsMap0>
<nsMap1>v1=http://capabilities.nat.bt.com/xsd/SCMPAL/AbstractContainer/V1.0</nsMap1>
<nsMap2>v3=http://capabilities.nat.bt.com/xsd/EDM/EMP/Item/V3.2</nsMap2>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>Actiontype</prop>
<xpathq>/soapenv:Envelope/soapenv:Body/v3:ItemRequest/v3:ItemElement/v3:ActionType/text()</xpathq>
<nsMap0>v3=http://capabilities.nat.bt.com/xsd/EDM/EMP/Item/V3.2</nsMap0>
<nsMap1>soapenv=http://schemas.xmlsoap.org/soap/envelope/</nsMap1>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion checks for: true is of type: XML XPath Assert.</log>
<then>Output Log Message</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/soapenv:Envelope/soapenv:Body/v3:ItemRequest/v3:ItemElement/v3:ActionType/text() = &quot;ADD&quot;</xpathq>
<nsMap0>soapenv=http://schemas.xmlsoap.org/soap/envelope/</nsMap0>
<nsMap1>v1=http://capabilities.nat.bt.com/xsd/SCMPAL/AbstractContainer/V1.0</nsMap1>
<nsMap2>v3=http://capabilities.nat.bt.com/xsd/EDM/EMP/Item/V3.2</nsMap2>
</CheckResult>

<text>PD94bWwgdmVyc2lvbj0iMS4wIj8+DQo8c29hcGVudjpFbnZlbG9wZSB4bWxuczpzb2FwZW52PSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6djM9Imh0dHA6Ly9jYXBhYmlsaXRpZXMubmF0LmJ0LmNvbS94c2QvRURNL0VNUC9JdGVtL1YzLjIiIHhtbG5zOnYxPSJodHRwOi8vY2FwYWJpbGl0aWVzLm5hdC5idC5jb20veHNkL1NDTVBBTC9BYnN0cmFjdENvbnRhaW5lci9WMS4wIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICA8djM6SXRlbVJlcXVlc3Q+DQogICAgICAgICA8djM6SXRlbUVsZW1lbnQ+DQogICAgICAgICAgICA8djM6QnVzaW5lc3NPcGVyYXRpb24+T3A8L3YzOkJ1c2luZXNzT3BlcmF0aW9uPg0KICAgICAgICAgICAgPHYzOkN1c3RvbWVySWQ+RFNZPC92MzpDdXN0b21lcklkPg0KICAgICAgICAgICAgPHYzOkFjdGlvblR5cGU+QUREPC92MzpBY3Rpb25UeXBlPg0KICAgICAgICAgICAgPHYzOkN1c3RvbWVySXRlbU51bWJlcj4jQUNDLTI5MDFWT0kxMjY8L3YzOkN1c3RvbWVySXRlbU51bWJlcj4NCiAgICAgICAgICAgIDx2MzpCVEl0ZW1OdW1iZXI+PC92MzpCVEl0ZW1OdW1iZXI+DQogICAgICAgICAgICA8djM6SXRlbU5hbWU+SXRlbSAyLjI8L3YzOkl0ZW1OYW1lPg0KICAgICAgICAgICAgPHYzOkl0ZW1EZXNjPlNvbWUgTmV3IEl0ZW08L3YzOkl0ZW1EZXNjPg0KICAgICAgICAgICAgPHYzOkN1c3RvbWVyQnVzaW5lc3NEaXZpc2lvbj5TQUxTVENGRzwvdjM6Q3VzdG9tZXJCdXNpbmVzc0RpdmlzaW9uPg0KICAgICAgICAgICAgPHYzOkl0ZW1DbGFzcz5DPC92MzpJdGVtQ2xhc3M+DQogICAgICAgICAgICA8djM6SXRlbVVuaXRPZk1lYXN1cmU+RUFDSDwvdjM6SXRlbVVuaXRPZk1lYXN1cmU+DQogICAgICAgICAgICA8djM6TGlmZWN5Y2xlU3RhdHVzPklTU1VBQkxFPC92MzpMaWZlY3ljbGVTdGF0dXM+DQogICAgICAgICAgICA8djM6U2VyaWFsTnVtYmVyUmVxdWlyZWRGbGFnPlk8L3YzOlNlcmlhbE51bWJlclJlcXVpcmVkRmxhZz4NCiAgICAgICAgICAgIDx2MzpTZXJpYWxUcmFjZUxldmVsPlQ8L3YzOlNlcmlhbFRyYWNlTGV2ZWw+DQogICAgICAgICAgICA8djM6TWFudWZhY3R1cmVyTmFtZT5EZWxsPC92MzpNYW51ZmFjdHVyZXJOYW1lPg0KICAgICAgICAgICAgPHYzOk1hbnVmYWN0dXJlclBhcnROdW1iZXI+TGFwdG9wPC92MzpNYW51ZmFjdHVyZXJQYXJ0TnVtYmVyPg0KICAgICAgICAgICAgPHYzOkNvbnRhaW5zTGl0aGl1bUJhdHRlcmllcz5ZPC92MzpDb250YWluc0xpdGhpdW1CYXR0ZXJpZXM+DQogICAgICAgICAgICA8djM6UmVwYWlyT3JTY3JhcEluZGljYXRvcj5OPC92MzpSZXBhaXJPclNjcmFwSW5kaWNhdG9yPg0KICAgICAgICAgICAgPHYzOkNvbnN1bWFibGU+WTwvdjM6Q29uc3VtYWJsZT4NCiAgICAgICAgICAgIDx2MzpSZXR1cm5hYmxlPk48L3YzOlJldHVybmFibGU+DQogICAgICAgICAgICA8djM6U3BlY2lhbEhhbmRsaW5nPk48L3YzOlNwZWNpYWxIYW5kbGluZz4NCiAgICAgICAgICAgIDx2MzpTcGVjaWFsSGFuZGxpbmdJbnN0cnVjdGlvbnM+U3BlY2lhbDwvdjM6U3BlY2lhbEhhbmRsaW5nSW5zdHJ1Y3Rpb25zPg0KICAgICAgICAgICAgPHYzOlJlcGFpckF2b2lkYW5jZT5ZPC92MzpSZXBhaXJBdm9pZGFuY2U+DQogICAgICAgICAgICA8djM6Q3VzdG9tZXJPd25lZD5ZPC92MzpDdXN0b21lck93bmVkPg0KICAgICAgICAgPC92MzpJdGVtRWxlbWVudD4NCiAgICAgIDwvdjM6SXRlbVJlcXVlc3Q+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</text>
<propKey></propKey>
    </Node>


    <Node name="JDBC" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="C6D6DB99073911E8BB03D8CB8A8AB1DA" 
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
<password_enc>l4cc2502ace7a2780ad9501589e06aa8b7398e139ab736a218bdcfc48d37d5941fcc9</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>true</usePool>
<sql>--Create table Customer ( Custid varchar(50) primarykey, BTitemnum int, Itemname varchar(50))&#13;&#10;insert into Customer (Custid ,BTitemnum,Itemname ) values (?,?,?)</sql>
<jdbcParam mode="IN" index="1" type="STRING" value="{{CustomerItemNum}}"></jdbcParam>
<jdbcParam mode="IN" index="2" type="STRING" value="{{BTItemNum}}"></jdbcParam>
<jdbcParam mode="IN" index="3" type="STRING" value="{{ItemName}}"></jdbcParam>
<IsStoredProc>true</IsStoredProc>
    </Node>


    <Node name="Output Log Message" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="DE46684E07D311E8BB03D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

<log>No Validation is needeed</log>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="D4AB1F0B073711E8BB03D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="D4AB1F0D073711E8BB03D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="D4AB1F0F073711E8BB03D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
