<?xml version="1.0" ?>

<TestCase name="BF" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/03/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="02/03/2018" host="inbasdpc10722" />
</meta>

<id>88FBAFD8071A11E8BB03D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz00MDY0MTAzNjE=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="Parse Text as Response" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="8F21F041071A11E8BB03D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="JDBC" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>Name</prop>
<xpathq>/breakfast_menu/food[1]/price/text()</xpathq>
<nsMap0>=</nsMap0>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>Price</prop>
<xpathq>/breakfast_menu/food/price/text()</xpathq>
<nsMap0>=</nsMap0>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>calories</prop>
<xpathq>/breakfast_menu/food/calories/text()</xpathq>
<nsMap0>=</nsMap0>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <tag>name</tag>
      <tagn>1</tagn>
      <prop>N</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetTagAttribute">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <tag>food</tag>
      <tagn>1</tagn>
      <attrib>name</attrib>
      <prop>name</prop>
      <default></default>
      <urlencode>true</urlencode>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLLisaProps">
              </Filter>

      <Filter type="com.itko.lisa.test.FilterRandListSelector">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <outertag>breakfast_menu</outertag>
      <outtertagn>1</outtertagn>
      <innertag>food</innertag>
      <filterattrib>price</filterattrib>
      <filtervalue>1</filtervalue>
      <attrib>food</attrib>
      <prop>P</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetTagAttribute">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
      <tag>food</tag>
      <tagn>1</tagn>
      <attrib>price</attrib>
      <prop>Price</prop>
      <default></default>
      <urlencode>true</urlencode>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Parse Text as Response.rsp</valueToFilterKey>
<prop>Email</prop>
<xpathq>/breakfast_menu/food[1]/name</xpathq>
<nsMap0>=</nsMap0>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="XML XPath Assertion" type="com.itko.lisa.xml.AssertXMLXPath">
<log></log>
<then>Do-Nothing Step</then>
<xpathq>(/breakfast_menu/food[1]/price/text()) = &quot;$5.95&quot;</xpathq>
<nsMap0>=</nsMap0>
</CheckResult>

<text>PGJyZWFrZmFzdF9tZW51Pg0KPGZvb2Q+DQo8bmFtZT5CZWxnaWFuIFdhZmZsZXM8L25hbWU+DQo8cHJpY2U+JDUuOTU8L3ByaWNlPg0KPGRlc2NyaXB0aW9uPg0KVHdvIG9mIG91ciBmYW1vdXMgQmVsZ2lhbiBXYWZmbGVzIHdpdGggcGxlbnR5IG9mIHJlYWwgbWFwbGUgc3lydXANCjwvZGVzY3JpcHRpb24+DQo8Y2Fsb3JpZXM+NjUwPC9jYWxvcmllcz4NCjwvZm9vZD4NCjxmb29kPg0KPG5hbWU+U3RyYXdiZXJyeSBCZWxnaWFuIFdhZmZsZXM8L25hbWU+DQo8cHJpY2U+JDcuOTU8L3ByaWNlPg0KPGRlc2NyaXB0aW9uPg0KTGlnaHQgQmVsZ2lhbiB3YWZmbGVzIGNvdmVyZWQgd2l0aCBzdHJhd2JlcnJpZXMgYW5kIHdoaXBwZWQgY3JlYW0NCjwvZGVzY3JpcHRpb24+DQo8Y2Fsb3JpZXM+OTAwPC9jYWxvcmllcz4NCjwvZm9vZD4NCjwvYnJlYWtmYXN0X21lbnU+</text>
<propKey></propKey>
    </Node>


    <Node name="JDBC" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="6AD4276E071B11E8BB03D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Do-Nothing Step" > 

<driver>org.apache.derby.jdbc.ClientDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:derby://localhost:1528/database/lisa.db</connect>
<user>sa</user>
<password_enc>l6f80679928603f16b7ab303810e08b166dd8e37354b1cc3898c3c5457303362ec8fc</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<usePool>true</usePool>
<sql>--Create table food ( name varchar(50), price varchar(50),calories int)&#13;&#10;--select * from food&#13;&#10;insert into food (name,price ,calories) values&#13;&#10;(?,?,?)</sql>
<jdbcParam mode="IN" index="1" type="STRING" value="{{Name}}"></jdbcParam>
<jdbcParam mode="IN" index="2" type="STRING" value="{{Price}}"></jdbcParam>
<jdbcParam mode="IN" index="3" type="STRING" value="{{calories}}"></jdbcParam>
<IsStoredProc>true</IsStoredProc>
    </Node>


    <Node name="Do-Nothing Step" log="error"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          uid="41EF9939071C11E8BB03D8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="88FBAFDE071A11E8BB03D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="88FBAFDC071A11E8BB03D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="88FBAFDA071A11E8BB03D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
