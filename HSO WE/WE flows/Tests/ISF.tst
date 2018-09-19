<?xml version="1.0" ?>

<TestCase name="ISF" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/07/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/30/2017" host="LP-R9WHCBM" />
</meta>

<id>DF83AA747B4411E78DB9F41920524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz0tMTE2MDY3MzkxMQ==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Read getWarrantyeligibility request" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="DDE3F21D7B5111E78DB9F41920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response" > 


      <!-- Data Sets -->
<readrec>Read data for getWarrantyeligibility</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/ISF/getWarrantyeligibility.txt</Loc>
<charset>DEFAULT</charset>
<PropKey>Req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="177B2E917B5311E78DB9F41920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="getWarrantyeligibility" > 

<text>e3tSZXExfX0=</text>
<propKey>Req2</propKey>
    </Node>


    <Node name="getWarrantyeligibility" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="F51D87FD7B5111E78DB9F41920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read getdeviceeligibility request" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.eligibilityDetails.OTVforSelection.OrderTypeVersion[0].orderTypeVersion</jsonPath>
      <valueProp>OTV</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.accountDetail.marketCode</jsonPath>
      <valueProp>marketcode</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.accountDetail.accountType</jsonPath>
      <valueProp>accountType</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.accountDetail.accountSubType</jsonPath>
      <valueProp>accountSubType</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.accountDetail.billType</jsonPath>
      <valueProp>billType</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.accountDetail.billingState</jsonPath>
      <valueProp>billingState</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.BAN</jsonPath>
      <valueProp>BAN</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getWarrantyeligibility.rsp</valueToFilterKey>
      <jsonPath>$.eligibilityDetails.warrantyProgramEligibility.eligibilityFlag</jsonPath>
      <valueProp>eligibilityFlag</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Scripted Assertion" type="com.itko.lisa.test.AssertByScript">
<log>Assertion name: Scripted Assertion checks for: true is of type: Assert by Script Execution.</log>
<then>Read getdeviceeligibility request</then>
<valueToAssertKey></valueToAssertKey>
        <script>&#13;&#10;if(testExec.getStateValue(&quot;eligibilityFlag&quot;).equals(&quot;true&quot;))&#13;&#10;return true;&#13;&#10;else if(testExec.getStateValue(&quot;eligibilityFlag&quot;).equals(&quot;false&quot;))&#13;&#10;return false; </script>
        <language>BeanShell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<url>http://orders-eligibility-qlab02-api.test.px-01.cf.t-mobile.com/search</url>
<content>{{Req2}}</content>
<data-type>text</data-type>
      <header field="Content-Type" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>fail</onError>
    </Node>


    <Node name="Read getdeviceeligibility request" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="45ECAD1D7B5311E78DB9F41920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~1" > 


      <!-- Data Sets -->
<readrec>Read Data for getDeviceeeligbilty</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/{{request}}</Loc>
<charset>DEFAULT</charset>
<PropKey>DEReq_1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~1" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="3E89A6597B5E11E78DB9F41920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="getDeviceeligibility" > 

<text>e3tERVJlcV8xfX0=</text>
<propKey>DEReq_2</propKey>
    </Node>


    <Node name="getDeviceeligibility" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="77D1312C7B5E11E78DB9F41920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read getreplacementDevices request" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getDeviceeligibility.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].imei</jsonPath>
      <valueProp>imei</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getDeviceeligibility.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].warrantyType</jsonPath>
      <valueProp>warrantyType</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getDeviceeligibility.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].productSKU</jsonPath>
      <valueProp>def_sku</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getDeviceeligibility.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].productName</jsonPath>
      <valueProp>def_productName</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getDeviceeligibility.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].deviceEligiblity.deviceStatus</jsonPath>
      <valueProp>deviceStatus</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Scripted Assertion~1" type="com.itko.lisa.test.AssertByScript">
<log>Assertion name: Scripted Assertion~1 checks for: true is of type: Assert by Script Execution.</log>
<then>Read getreplacementDevices request</then>
<valueToAssertKey></valueToAssertKey>
        <script>// This script should return a boolean result indicating the assertion is true or false&#13;&#10;if(testExec.getStateValue(&quot;deviceStatus&quot;).equals(&quot;Eligible&quot;))&#13;&#10;return true;&#13;&#10;else if(testExec.getStateValue(&quot;deviceStatus&quot;).equals(&quot;InEligible&quot;))&#13;&#10;return false; &#13;&#10;</script>
        <language>BeanShell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<url>http://devices-qlab02-api.test.px-01.cf.t-mobile.com/devicemanagement/v1/devices/warrantyeligibility/search</url>
<content>{{DEReq_2}}&#13;&#10;&#13;&#10;</content>
<content-type></content-type>
<data-type>text</data-type>
      <header field="Content-Type" value="application/json" />
      <header field="Accept" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Read getreplacementDevices request" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="4F1759017B6611E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~2" > 


      <!-- Data Sets -->
<readrec>Read Data for getReplacementDevices</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/{{request}}</Loc>
<charset>DEFAULT</charset>
<PropKey>Rep_Req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~2" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="830C6EB87B6611E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="getReplacementDevices" > 

<text>e3tSZXBfUmVxMX19</text>
<propKey>Rep_Req2</propKey>
    </Node>


    <Node name="getReplacementDevices" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="9D8E2AC87B6611E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read request for getPHPOffers" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getReplacementDevices.rsp</valueToFilterKey>
      <jsonPath>$.replacementDeviceList.replacementDevice[0].exchangeSKU</jsonPath>
      <valueProp>sku</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getReplacementDevices.rsp</valueToFilterKey>
      <jsonPath>$.replacementDeviceList.replacementDevice[0].productName</jsonPath>
      <valueProp>ex_productName</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getReplacementDevices.rsp</valueToFilterKey>
      <prop>getreplacementdevices-response</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Ensure Result Contains String~1" type="com.itko.lisa.test.CheckResultContains">
<log>check whether sku is returned in response</log>
<then>Read request for getPHPOffers</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{sku}}</param>
</CheckResult>

<url>http://replacementdevices-qlab02.test.px-01.cf.t-mobile.com/v1/replacementdevices/search</url>
<content>{{Rep_Req2}}</content>
<data-type>text</data-type>
      <header field="Accept" value="application/json" />
      <header field="Content-Type" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Read request for getPHPOffers" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="E2FC85CC7B6611E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~3" > 


      <!-- Data Sets -->
<readrec>ReadData for getPHPoffers</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/ISF/getPHPOffers.txt</Loc>
<charset>DEFAULT</charset>
<PropKey>Php_Req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~3" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="F7C395007B6611E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="getPHPOffers" > 

<text>e3tQaHBfUmVxMX19</text>
<propKey>Php_Req2</propKey>
    </Node>


    <Node name="getPHPOffers" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="3BFE520A7B6711E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read request for getShippingOptions" > 

<url>http://handsetprotectionservices-qlab02.test.px-01.cf.t-mobile.com/search</url>
<content>{{Php_Req2}}&#13;&#10;&#13;&#10;&#13;&#10;</content>
<data-type>text</data-type>
      <header field="Content-type" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Read request for getShippingOptions" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="EA61DF6C7B6711E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~4" > 


      <!-- Data Sets -->
<readrec>Read Data for getshippingOptions</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/{{request}}</Loc>
<charset>DEFAULT</charset>
<PropKey>Shp_Req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~4" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="240434B67B6811E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="getShippingOptions" > 

<text>e3tTaHBfUmVxMX19</text>
<propKey>Shp_Req2</propKey>
    </Node>


    <Node name="getShippingOptions" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="487065207B6811E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read createsession request" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.getShippingOptions.rsp</valueToFilterKey>
      <jsonPath>$.shippingOptionList.shippingOption[0].name</jsonPath>
      <valueProp>shippingname</valueProp>
      <lengthProp></lengthProp>
      </Filter>

<url>http://devices-qlab02-api.test.px-01.cf.t-mobile.com/devicemanagement/v1/devices/shippingoptions/search</url>
<content>{{Shp_Req2}}</content>
<content-type>application/json</content-type>
<data-type>text</data-type>
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Read createsession request" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="A958BED77B6811E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~5" > 


      <!-- Data Sets -->
<readrec>Read Data for createsession</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/{{request}}</Loc>
<charset>DEFAULT</charset>
<PropKey>ses_Req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~5" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="36C34A477B6911E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="createsssion" > 

<text>e3tzZXNfUmVxMX19</text>
<propKey>ses_Req2</propKey>
    </Node>


    <Node name="createsssion" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="98EE19547B6A11E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service CreateDraftOrder" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.createsssion.rsp</valueToFilterKey>
      <jsonPath>$.createSessionResponse.header.sender.sessionId</jsonPath>
      <valueProp>sessionid</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String~2" type="com.itko.lisa.test.CheckResultContains">
<log>check sessionid is returned in response</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{sessionid}}</param>
</CheckResult>

<url>http://{{hostname}}:{{port}}/{{path}}</url>
<content>{{ses_Req2}}</content>
<content-type>application/json</content-type>
<data-type>text</data-type>
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Web Service CreateDraftOrder" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="9177867A840211E7A820D40F20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read file confirmOrder.txt" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
      <tag>ns1:description</tag>
      <tagn>1</tagn>
      <prop>Error</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
      <tag>ns1:responseCode</tag>
      <tagn>1</tagn>
      <prop>Errormessage</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetAttribute">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
      <tag>ns1:responseStatus</tag>
      <tagn>1</tagn>
      <attrib>code</attrib>
      <prop>Error Status Code</prop>
      <default>102</default>
      <urlencode>true</urlencode>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
      <tag>ns0:orderId</tag>
      <tagn>1</tagn>
      <prop>orderId</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/AWRE/createdraftorderresponse.xml</file>
      <append>false</append>
      </Filter>


      <!-- Data Sets -->
<readrec>Read Data for createdraftorder</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Abort the test if orderid is not created</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/ns0:createDraftOrderResponse/ns1:responseStatus/ns1:detail/ns1:definition/text()</xpathq>
<nsMap0>SOAP-ENV=http://schemas.xmlsoap.org/soap/envelope/</nsMap0>
<nsMap1>ns0=http://esp.t-mobile.com/commercemanagement/order</nsMap1>
<nsMap2>ns1=http://esp.t-mobile.com/cso</nsMap2>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/CommerceOrder.wsdl</wsdl>
<endpoint>http://QATTBCO522.unix.gsm1900.org:8115/service/soap/v1/CommerceManagement/Order</endpoint>
<targetNamespace>http://esp.t-mobile.com/service/commercemanagement/order</targetNamespace>
<service>CommerceOrderService</service>
<port>CommerceOrderPort</port>
<operation>CreateDraftOrder</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm9yZD0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY29tbWVyY2VtYW5hZ2VtZW50L29yZGVyIiB4bWxuczpjc289Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyIgeG1sbnM6Y29tPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGNyZWF0ZURyYWZ0T3JkZXJSZXF1ZXN0IHhtbG5zPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jb21tZXJjZW1hbmFnZW1lbnQvb3JkZXIiPg0KICAgICAgICAgPG5zMzpoZWFkZXIgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPg0KICAgICAgICAgICAgPG5zMzpzZW5kZXI+DQogICAgICAgICAgICAgICA8bnMzOnNlbmRlcklkPkFDVUk8L25zMzpzZW5kZXJJZD4NCiAgICAgICAgICAgICAgIDxuczM6Y2hhbm5lbElkPlJFVEFJTDwvbnMzOmNoYW5uZWxJZD4NCiAgICAgICAgICAgICAgIDxuczM6YXBwbGljYXRpb25JZD5BQ1VJPC9uczM6YXBwbGljYXRpb25JZD4NCiAgICAgICAgICAgICAgIDxuczM6YXBwbGljYXRpb25Vc2VySWQ+U3VwZXJ1c3I8L25zMzphcHBsaWNhdGlvblVzZXJJZD4NCiAgICAgICAgICAgICAgIDxuczM6c2Vzc2lvbklkPnt7c2Vzc2lvbmlkfX08L25zMzpzZXNzaW9uSWQ+DQogICAgICAgICAgICAgICA8bnMzOnN0b3JlSWQ+e3tzdG9yZUlkfX08L25zMzpzdG9yZUlkPg0KICAgICAgICAgICAgICAgPG5zMzpkZWFsZXJDb2RlPnt7ZGVhbGVyQ29kZX19PC9uczM6ZGVhbGVyQ29kZT4NCiAgICAgICAgICAgIDwvbnMzOnNlbmRlcj4NCiAgICAgICAgICAgIDxuczM6dGFyZ2V0Pg0KICAgICAgICAgICAgICAgPG5zMzpjdXN0b21lckNvbXBhbnlJZD57e2N1c3RvbWVyQ29tcGFueUlkfX08L25zMzpjdXN0b21lckNvbXBhbnlJZD4NCiAgICAgICAgICAgIDwvbnMzOnRhcmdldD4NCiAgICAgICAgIDwvbnMzOmhlYWRlcj4NCiAgICAgICAgIDxvcmRlcj4NCiAgICAgICAgICAgIDxuczQ6b3JkZXJUeXBlIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+e3tvcmRlclR5cGV9fTwvbnM0Om9yZGVyVHlwZT4NCiAgICAgICAgICAgIDxuczQ6YWNjb3VudEluZm8geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6YWNjb3VudE51bWJlcj57e0JBTn19PC9uczQ6YWNjb3VudE51bWJlcj4NCiAgICAgICAgICAgICAgIDxuczQ6c2VydmljZVN0YXJ0RGF0ZT4yMDE3LTAxLTIwVDA4OjAwOjAwWjwvbnM0OnNlcnZpY2VTdGFydERhdGU+DQogICAgICAgICAgICAgICA8bnM0OmFjY291bnRUeXBlPnt7YWNjb3VudFR5cGV9fTwvbnM0OmFjY291bnRUeXBlPg0KICAgICAgICAgICAgICAgPG5zNDphY2NvdW50U3ViVHlwZT57e2FjY291bnRTdWJUeXBlfX08L25zNDphY2NvdW50U3ViVHlwZT4NCiAgICAgICAgICAgICAgPG5zNDpiaWxsaW5nQ29udGFjdD4NCiAgICAgICAgICAgICAgICAgIDxuczM6cGVyc29uTmFtZSB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+DQogICAgICAgICAgICAgICAgICAgICA8bnMzOmZpcnN0TmFtZT5ETE08L25zMzpmaXJzdE5hbWU+DQogICAgICAgICAgICAgICAgICAgICA8bnMzOmxhc3ROYW1lPlJFVEFJTCBEQVRBIERPTk9UVVNFPC9uczM6bGFzdE5hbWU+DQogICAgICAgICAgICAgICAgICA8L25zMzpwZXJzb25OYW1lPg0KICAgICAgICAgICAgICAgICAgPG5zMzphZGRyZXNzQ29tbXVuaWNhdGlvbiB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+DQogICAgICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3M+DQogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3NMaW5lMT4xIFJBVklOSUEgRFIgU1RFIDEwMDA8L25zMzphZGRyZXNzTGluZTE+DQogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmNpdHlOYW1lPkFUTEFOVEE8L25zMzpjaXR5TmFtZT4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6c3RhdGVOYW1lPkdBPC9uczM6c3RhdGVOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpjb3VudHJ5TmFtZT5VU0E8L25zMzpjb3VudHJ5TmFtZT4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6cG9zdGFsQ29kZT4zMDM0NjwvbnMzOnBvc3RhbENvZGU+DQogICAgICAgICAgICAgICAgICAgICA8L25zMzphZGRyZXNzPg0KICAgICAgICAgICAgICAgICAgPC9uczM6YWRkcmVzc0NvbW11bmljYXRpb24+DQogICAgICAgICAgICAgICA8L25zNDpiaWxsaW5nQ29udGFjdD4NCiAgICAgICAgICAgIDwvbnM0OmFjY291bnRJbmZvPg0KICAgICAgICAgICAgPG5zNDpwYXltZW50IHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgICAgICA8bnM0OnBheW1lbnRUeXBlPkRQWTwvbnM0OnBheW1lbnRUeXBlPg0KICAgICAgICAgICAgPC9uczQ6cGF5bWVudD4NCiAgICAgICAgICAgIDxuczQ6bm90aWZpY2F0aW9uIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgICAgICA8bnM0Om5vdGlmaWNhdGlvblByZWZlcmVuY2U+UzwvbnM0Om5vdGlmaWNhdGlvblByZWZlcmVuY2U+DQogICAgICAgICAgICAgICA8bnM0Ok1TSVNETj57e01TSVNETn19PC9uczQ6TVNJU0ROPg0KICAgICAgICAgICAgPC9uczQ6bm90aWZpY2F0aW9uPg0KICAgICAgICAgICAgPG5zNDpoZWFkZXJDaGFyZ2UgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjYuOTk8L25zNDphbW91bnQ+DQogICAgICAgICAgICAgICA8bnM0Om5hbWU+e3tuYW1lfX08L25zNDpuYW1lPg0KICAgICAgICAgICAgICAgPG5zNDpjYXRlZ29yeT57e2NhdGVnb3J5fX0NCgkJCSAgIDwvbnM0OmNhdGVnb3J5Pg0KICAgICAgICAgICAgICAgPG5zNDpyZWZlcmVuY2U+U0hJUFA8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgICAgICA8bnM0OlNPQz5TSElQRkVFPC9uczQ6U09DPg0KICAgICAgICAgICAgPC9uczQ6aGVhZGVyQ2hhcmdlPg0KICAgICAgICAgICAgPG5zNDpvcmRlckxpbmUgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6aWQvPg0KICAgICAgICAgICAgICAgPG5zNDpmdWxmaWxsbWVudExpbmVJZD4xPC9uczQ6ZnVsZmlsbG1lbnRMaW5lSWQ+DQogICAgICAgICAgICAgICA8bnM0OmRlbGl2ZXJ5TWV0aG9kPnt7ZGVsaXZlcnlNZXRob2R9fTwvbnM0OmRlbGl2ZXJ5TWV0aG9kPg0KICAgICAgICAgICAgICAgPG5zNDpkZXNjcmlwdGlvbj57e2V4X3Byb2R1Y3ROYW1lfX08L25zNDpkZXNjcmlwdGlvbj4NCiAgICAgICAgICAgICAgIDxuczQ6c2hvcnREZXNjcmlwdGlvbj57e3NrdX19PC9uczQ6c2hvcnREZXNjcmlwdGlvbj4NCiAgICAgICAgICAgICAgIDxuczQ6a2l0Q29kZT5SZXBsYWNlbWVudFNLVTwvbnM0OmtpdENvZGU+DQogICAgICAgICAgICAgICA8bnM0Om1hcmtldENvZGU+QVRHPC9uczQ6bWFya2V0Q29kZT4NCiAgICAgICAgICAgICAgIDxuczQ6cXVhbnRpdHk+MTwvbnM0OnF1YW50aXR5Pg0KICAgICAgICAgICAgICAgPG5zNDp1bml0T2ZNZWFzdXJlPkVBPC9uczQ6dW5pdE9mTWVhc3VyZT4NCiAgICAgICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+MzQuNTU8L25zNDphbW91bnQ+DQogICAgICAgICAgICAgICAgICA8bnM0Om5hbWU+UmVzdG9ja2luZ0ZlZTwvbnM0Om5hbWU+DQogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT5SU0tGRTwvbnM0OnJlZmVyZW5jZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6U09DPlJTS0ZFRTwvbnM0OlNPQz4NCiAgICAgICAgICAgICAgIDwvbnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+MjUuNTU8L25zNDphbW91bnQ+DQogICAgICAgICAgICAgICAgICA8bnM0Om5hbWU+T09XRmVlPC9uczQ6bmFtZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6Y2F0ZWdvcnk+SW5mb09ubHk8L25zNDpjYXRlZ29yeT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6cmVmZXJlbmNlPlRMQUNDPC9uczQ6cmVmZXJlbmNlPg0KICAgICAgICAgICAgICAgICAgPG5zNDpTT0M+T09XRkVFPC9uczQ6U09DPg0KICAgICAgICAgICAgICAgPC9uczQ6Y2hhcmdlPg0KICAgICAgICAgICAgICAgPG5zNDpjaGFyZ2U+DQogICAgICAgICAgICAgICAgICA8bnM0OmFtb3VudD4wPC9uczQ6YW1vdW50Pg0KICAgICAgICAgICAgICAgICAgPG5zNDpuYW1lPlJldGFpbFByaWNlPC9uczQ6bmFtZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6Y2F0ZWdvcnk+SW5mb09ubHk8L25zNDpjYXRlZ29yeT4NCiAgICAgICAgICAgICAgIDwvbnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+MDwvbnM0OmFtb3VudD4NCiAgICAgICAgICAgICAgICAgIDxuczQ6bmFtZT5SZXBsYWNlbWVudFNLVTwvbnM0Om5hbWU+DQogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT55ZXM8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgICAgICA8L25zNDpjaGFyZ2U+DQogICAgICAgICAgICAgICA8bnM0OnNrdT57e3NrdX19PC9uczQ6c2t1Pg0KICAgICAgICAgICAgICAgPG5zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICAgICAgICAgIDxuczQ6TVNJU0ROPnt7TVNJU0ROfX08L25zNDpNU0lTRE4+DQogICAgICAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICAgIDwvbnM0Om9yZGVyTGluZT4NCiAgICAgICAgICAgIDxuczQ6b3JkZXJMaW5lIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgICAgICA8bnM0OmlkLz4NCiAgICAgICAgICAgICAgIDxuczQ6ZnVsZmlsbG1lbnRMaW5lSWQ+MjwvbnM0OmZ1bGZpbGxtZW50TGluZUlkPg0KICAgICAgICAgICAgICAgPG5zNDpkZWxpdmVyeU1ldGhvZD5TSFA8L25zNDpkZWxpdmVyeU1ldGhvZD4NCiAgICAgICAgICAgICAgIDxuczQ6ZGVzY3JpcHRpb24+e3tkZWZfcHJvZHVjdE5hbWV9fTwvbnM0OmRlc2NyaXB0aW9uPg0KICAgICAgICAgICAgICAgPG5zNDpzaG9ydERlc2NyaXB0aW9uPnt7ZGVmX3NrdX19PC9uczQ6c2hvcnREZXNjcmlwdGlvbj4NCiAgICAgICAgICAgICAgIDxuczQ6a2l0Q29kZT5EZWZlY3RpdmVTS1U8L25zNDpraXRDb2RlPg0KICAgICAgICAgICAgICAgPG5zNDpxdWFudGl0eT4xPC9uczQ6cXVhbnRpdHk+DQogICAgICAgICAgICAgICA8bnM0OnVuaXRPZk1lYXN1cmU+RUE8L25zNDp1bml0T2ZNZWFzdXJlPg0KICAgICAgICAgICAgICAgPG5zNDpjaGFyZ2U+DQogICAgICAgICAgICAgICAgICA8bnM0OmFtb3VudD4wPC9uczQ6YW1vdW50Pg0KICAgICAgICAgICAgICAgICAgPG5zNDpuYW1lPkRlZmVjdGl2ZVNLVTwvbnM0Om5hbWU+DQogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT55ZXM8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgICAgICA8L25zNDpjaGFyZ2U+DQogICAgICAgICAgICAgICA8bnM0OnNrdT57e2RlZl9za3V9fTwvbnM0OnNrdT4NCiAgICAgICAgICAgICAgIDxuczQ6c3Vic2NyaWJlckluZm8+DQogICAgICAgICAgICAgICAgICA8bnM0Ok1TSVNETj57e01TSVNETn19PC9uczQ6TVNJU0ROPg0KICAgICAgICAgICAgICAgICAgPG5zNDpzZXJpYWxOdW1iZXI+e3tpbWVpfX08L25zNDpzZXJpYWxOdW1iZXI+DQogICAgICAgICAgICAgICAgICA8bnM0OlBIUEluZGljYXRvcj4wPC9uczQ6UEhQSW5kaWNhdG9yPg0KICAgICAgICAgICAgICAgICAgPG5zNDpTQVBXYXJyYW50eVR5cGU+e3tTQVBXYXJyYW50eVR5cGV9fTwvbnM0OlNBUFdhcnJhbnR5VHlwZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6d2FycmFudHlUeXBlPnt7d2FycmFudHlUeXBlfX08L25zNDp3YXJyYW50eVR5cGU+DQogICAgICAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICAgICAgIDxuczQ6ZGV2aWNlSXRlbT4NCiAgICAgICAgICAgICAgICAgIDxuczM6YmFzaWNJbmZvIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6bWFudWZhY3R1cmVyPlNhbXN1bmc8L25zMzptYW51ZmFjdHVyZXI+DQogICAgICAgICAgICAgICAgICA8L25zMzpiYXNpY0luZm8+DQogICAgICAgICAgICAgICAgICA8bnMzOmZpcnN0VXNlRGF0ZSB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+MjAxNy0wNy0yM1QyMToyNTo1Mlo8L25zMzpmaXJzdFVzZURhdGU+DQogICAgICAgICAgICAgICAgICA8bnMzOmxhc3RVc2VEYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE3LTA3LTI2VDIxOjI1OjUyWjwvbnMzOmxhc3RVc2VEYXRlPg0KICAgICAgICAgICAgICAgICAgPG5zMzp3YXJyYW50eUV4cGlyYXRpb25EYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE4LTA3LTIzVDA3OjAwOjAwWjwvbnMzOndhcnJhbnR5RXhwaXJhdGlvbkRhdGU+DQogICAgICAgICAgICAgICAgICA8bnMzOnR5cGUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPlQtTW9iaWxlIC0gTmV3PC9uczM6dHlwZT4NCiAgICAgICAgICAgICAgIDwvbnM0OmRldmljZUl0ZW0+DQogICAgICAgICAgICAgICA8bnM0OmlzQWRkRGV2aWNlPmZhbHNlPC9uczQ6aXNBZGREZXZpY2U+DQogICAgICAgICAgICAgICA8bnM0Omluc3VyYW5jZVJlcGxhY2VtZW50SW5kaWNhdG9yLz4NCiAgICAgICAgICAgIDwvbnM0Om9yZGVyTGluZT4NCiAgICAgICAgICAgIDxuczQ6c2hpcHBpbmdJbmZvIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgICAgICA8bnM0OnNoaXBwaW5nTW9kZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6Y29kZT4xMDwvbnM0OmNvZGU+DQogICAgICAgICAgICAgICAgICA8bnM0OmRlc2NyaXB0aW9uPlVQUyBHcm91bmQgLSBVcCB0byA3IGJ1c2luZXNzIGRheXMgKCQ2Ljk5KTwvbnM0OmRlc2NyaXB0aW9uPg0KICAgICAgICAgICAgICAgPC9uczQ6c2hpcHBpbmdNb2RlPg0KICAgICAgICAgICAgICAgPG5zNDpzaGlwVG9Db250YWN0Pg0KICAgICAgICAgICAgICAgICAgPG5zMzpwZXJzb25OYW1lIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6Zmlyc3ROYW1lPkRMTTwvbnMzOmZpcnN0TmFtZT4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6bGFzdE5hbWU+UkVUQUlMIERBVEEgRE9OT1RVU0U8L25zMzpsYXN0TmFtZT4NCiAgICAgICAgICAgICAgICAgIDwvbnMzOnBlcnNvbk5hbWU+DQogICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzcz4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzc0xpbmUxPjEgUkFWSU5JQSBEUiBTVEUgMTAwMDwvbnMzOmFkZHJlc3NMaW5lMT4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6Y2l0eU5hbWU+QVRMQU5UQTwvbnMzOmNpdHlOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpzdGF0ZU5hbWU+R0E8L25zMzpzdGF0ZU5hbWU+DQogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmNvdW50cnlOYW1lPlVTQTwvbnMzOmNvdW50cnlOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpwb3N0YWxDb2RlPjMwMzQ2PC9uczM6cG9zdGFsQ29kZT4NCiAgICAgICAgICAgICAgICAgICAgIDwvbnMzOmFkZHJlc3M+DQogICAgICAgICAgICAgICAgICA8L25zMzphZGRyZXNzQ29tbXVuaWNhdGlvbj4NCiAgICAgICAgICAgICAgICAgIDxuczM6ZW1haWxDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6ZW1haWxBZGRyZXNzLz4NCiAgICAgICAgICAgICAgICAgIDwvbnMzOmVtYWlsQ29tbXVuaWNhdGlvbj4NCiAgICAgICAgICAgICAgIDwvbnM0OnNoaXBUb0NvbnRhY3Q+DQogICAgICAgICAgICA8L25zNDpzaGlwcGluZ0luZm8+DQogICAgICAgICAgICA8bnM0Om5vdGUgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6cmVhc29uQ29kZT5BdWRpbyAvIFNwZWFrZXIgSXNzdWVzPC9uczQ6cmVhc29uQ29kZT4NCiAgICAgICAgICAgICAgIDxuczQ6bm90ZXM+d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3dzwvbnM0Om5vdGVzPg0KICAgICAgICAgICAgICAgPG5zNDpjdXN0b21lclNhdEluZGljYXRvcj5BdWRpbyAvIFNwZWFrZXIgSXNzdWVzPC9uczQ6Y3VzdG9tZXJTYXRJbmRpY2F0b3I+DQogICAgICAgICAgICA8L25zNDpub3RlPg0KICAgICAgICAgICA8bnM0OnRyYW5zYWN0aW9uVHlwZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPldBUlJBTlRZRVhDSEFOR0U8L25zNDp0cmFuc2FjdGlvblR5cGU+DQogICAgICAgICAgICA8bnM0OmluaXRpYXRpbmdTdG9yZUlkIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+e3tzdG9yZUlkfX08L25zNDppbml0aWF0aW5nU3RvcmVJZD4NCiAgICAgICAgICAgIDxuczQ6b3JkZXJUeXBlVmVyc2lvbiB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPnt7T1RWfX08L25zNDpvcmRlclR5cGVWZXJzaW9uPg0KICAgICAgICAgICAgPG5zNDppc1BIUERlY2xpbmVkIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+ZmFsc2U8L25zNDppc1BIUERlY2xpbmVkPg0KICAgICAgICAgPC9vcmRlcj4NCiAgICAgIDwvY3JlYXRlRHJhZnRPcmRlclJlcXVlc3Q+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>/CreateDraftOrder</soapAction>
<sslInfo>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Read file confirmOrder.txt" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="66F21ECB7C2F11E7AB6378D920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~7" > 


      <!-- Data Sets -->
<readrec>Read Data for confirmorder</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/confirmOrder.txt</Loc>
<charset>DEFAULT</charset>
<PropKey>order_req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~7" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="855841057C2F11E7AB6378D920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="confirmorder" > 

<text>e3tvcmRlcl9yZXExfX0=</text>
<propKey>order_req2</propKey>
    </Node>


    <Node name="confirmorder" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="4C229A5E7C3011E7AB6378D920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read file createorderevent-shipped.txt" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.confirmorder.rsp</valueToFilterKey>
      <jsonPath>$.confirmOrderResponse.order.status</jsonPath>
      <valueProp>status</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.confirmorder.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/AWRE/confirmorderresponse.txt</file>
      <append>false</append>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String~3" type="com.itko.lisa.test.CheckResultContains">
<log>check whether order_id is returned in response</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{status}}</param>
</CheckResult>

<url>https://qattbco522.unix.gsm1900.org:7116/service/rest/v1/CommerceManagement/Order/ConfirmOrder</url>
<content>{{order_req2}}</content>
<content-type>application/json</content-type>
<data-type>text</data-type>
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Read file createorderevent-shipped.txt" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="4E88E59E897611E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="createordderevent -shipped request" > 

<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/ISF/createorderevent-shipped.txt</Loc>
<charset>DEFAULT</charset>
<PropKey>orderevent_shipped</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="createordderevent -shipped request" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="3CC180F897711E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Web Service createOrderEvent[Shipped]" > 


      <!-- Data Sets -->
<readrec>Read Rows from Excel File~3</readrec>
<text>e3tvcmRlcmV2ZW50X3NoaXBwZWR9fQ==</text>
<propKey>shipped_req</propKey>
    </Node>


    <Node name="Web Service createOrderEvent[Shipped]" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="9C62604D88AA11E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Wait for one min" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Abort the test for any serbice response failure</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification</xpathq>
<nsMap0>ns=http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2</nsMap0>
<nsMap1>=</nsMap1>
<nsMap2>SOAP-ENV=http://schemas.xmlsoap.org/soap/envelope/</nsMap2>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-26/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>https://qattbco523.UNIX.GSM1900.ORG:5116/Event/Publish/OrderEvent</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">e3tzaGlwcGVkX3JlcX19DQo=</request>
<style>document</style>
<use>literal</use>
<soapAction>createOrderEvent</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Wait for one min" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="3C601D05897511E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service GetCustomerOrderDetails" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Thread.sleep(120000);</script>
    </Node>


    <Node name="Web Service GetCustomerOrderDetails" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="C2E4F00C88AE11E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service createOrderEvent[Ready to PickUp]" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.Web Service GetCustomerOrderDetails.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/ISF/getcustomerorderdetailsresponse.txt</file>
      <append>false</append>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Web Service GetCustomerOrderDetails.rsp</valueToFilterKey>
      <tag>ns16:status</tag>
      <tagn>1</tagn>
      <prop>order_status</prop>
      </Filter>


      <!-- Data Sets -->
<readrec>Read Rows from Excel File</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion~2 checks for: true is of type: XML XPath Assert.</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification/ns:FaultMessage</xpathq>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/Order.wsdl</wsdl>
<endpoint>http://qattbco522.unix.gsm1900.org:8115/Enterprise</endpoint>
<targetNamespace>http://www.t-mobile.com/es/order</targetNamespace>
<service>Order</service>
<port>Order</port>
<operation>GetCustomerOrderDetails</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPg0KICAgPHNvYXA6Qm9keT4NCiAgICAgIDxuczEzOmVzaUdldEN1c3RvbWVyT3JkZXJEZXRhaWxzUmVxdWVzdCB4bWxuczpuczEzPSJodHRwOi8vd3d3LnQtbW9iaWxlLmNvbS9lc2kvb3JkZXIvZ2V0Y3VzdG9tZXJvcmRlcmRldGFpbHMiPg0KICAgICAgICAgPHJlcXVlc3RIZWFkZXIgeG1sbnM9Imh0dHA6Ly93d3cudC1tb2JpbGUuY29tL2VzaS9iYXNlIj4NCiAgICAgICAgICAgIDxhcHBsaWNhdGlvbklkPnt7YXBwbGljYXRpb25JZH19PC9hcHBsaWNhdGlvbklkPg0KICAgICAgICAgICAgPGNoYW5uZWxJZD57e2NoYW5uZWxJZH19PC9jaGFubmVsSWQ+DQogICAgICAgICAgICA8b3BlcmF0b3JJZD4xOTkxPC9vcGVyYXRvcklkPg0KICAgICAgICAgICAgPGNsaWVudElkPnt7Y2xpZW50SWR9fTwvY2xpZW50SWQ+DQogICAgICAgICAgICA8YXBwbGljYXRpb25Vc2VySWQ+e3thcHBsaWNhdGlvblVzZXJJZH19PC9hcHBsaWNhdGlvblVzZXJJZD4NCiAgICAgICAgICAgIDxzdG9yZUlkPnt7c3RvcmVJZH19PC9zdG9yZUlkPg0KICAgICAgICAgICAgPGRlYWxlckNvZGU+e3tkZWFsZXJDb2RlfX08L2RlYWxlckNvZGU+DQogICAgICAgICAgICA8c2VuZGVySWQ+e3tzZW5kZXJJZH19PC9zZW5kZXJJZD4NCiAgICAgICAgICAgICAgICAgICAgPC9yZXF1ZXN0SGVhZGVyPg0KICAgICAgICAgPG5zMTM6b3JkZXJJZD57e29yZGVySWR9fTwvbnMxMzpvcmRlcklkPg0KICAgICAgICAgPC9uczEzOmVzaUdldEN1c3RvbWVyT3JkZXJEZXRhaWxzUmVxdWVzdD4NCiAgIDwvc29hcDpCb2R5Pg0KPC9zb2FwOkVudmVsb3BlPg==</request>
<style>document</style>
<use>literal</use>
<soapAction>/ORDER/CUSTOMERORDERDETAILS/GET</soapAction>
<sslInfo>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Web Service createOrderEvent[Ready to PickUp]" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="7EE1BA0D8BEA11E7A6A9DEC320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service GetCustomerOrderDetails~1" > 


      <!-- Data Sets -->
<readrec>Read data for orderevnt-RP</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~3" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion~3 checks for: true is of type: XML XPath Assert.</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification</xpathq>
<nsMap0>SOAP-ENV=http://schemas.xmlsoap.org/soap/envelope/</nsMap0>
<nsMap1>=</nsMap1>
<nsMap2>ns=http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2</nsMap2>
<nsMap3>ns0=http://schemas.xmlsoap.org/soap/envelope/</nsMap3>
<nsMap4>xs=http://www.w3.org/2001/XMLSchema</nsMap4>
<nsMap5>xsi=http://www.w3.org/2001/XMLSchema-instance</nsMap5>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-26/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>https://qattbco523.UNIX.GSM1900.ORG:5116/Event/Publish/OrderEvent</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjxzb2FwZW52OkVudmVsb3BlIHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiPg0KICA8c29hcGVudjpCb2R5Pg0KPG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+DQoJCQk8ZXZlbnRTdW1tYXJ5IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMxPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiIHhtbG5zOlNPQVA9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIj4NCgkJCQk8ZXZlbnRUeXBlPkVYQ0hSZWFkeVBpY2t1cDwvZXZlbnRUeXBlPg0KCQkJCTxldmVudERhdGVUaW1lPjIwMTctMDgtMDdUMTQ6MTM6MzI8L2V2ZW50RGF0ZVRpbWU+DQoJCQkJPG5vdGlmaWNhdGlvbkxpc3QvPg0KCQkJPC9ldmVudFN1bW1hcnk+DQoJCQk8b3JkZXJMaXN0IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMxPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiIHhtbG5zOlNPQVA9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIj4NCgkJCQk8b3JkZXI+DQoJCQkJCTxvcmRlclN1bW1hcnk+DQoJCQkJCQk8YmFuPnt7QkFOfX08L2Jhbj4NCgkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPg0KCQkJCQkJPGNoYW5uZWw+MTI8L2NoYW5uZWw+DQoJCQkJCQk8c3RvcmVJZD40NTE8L3N0b3JlSWQ+DQoJCQkJCQk8b3JpZ2luYWxTeXN0ZW1JZD5TVFJFPC9vcmlnaW5hbFN5c3RlbUlkPg0KCQkJCQkJPG9yZGVyTnVtYmVyPnt7b3JkZXJJZH19PC9vcmRlck51bWJlcj4NCgkJCQkJCTxzYXBPcmRlck51bWJlcj43MDAwMjA3MzIxPC9zYXBPcmRlck51bWJlcj4NCgkJCQkJCTxvcmRlclN0YXR1cz5SUDwvb3JkZXJTdGF0dXM+DQoJCQkJCQk8b3JkZXJUeXBlPlpXMDE8L29yZGVyVHlwZT4NCgkJCQkJCTxvcmRlckRhdGVUaW1lPjIwMTctMDgtMDdUMTQ6MTM6MzA8L29yZGVyRGF0ZVRpbWU+DQoJCQkJCQk8b3JkZXJJdGVtPg0KCQkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPg0KCQkJCQkJCTxkZXNjcmlwdGlvbj5TQU0gTjkyMFQgTk9URSA1IDMyRyBCTEsgS0lUPC9kZXNjcmlwdGlvbj4NCgkJCQkJCQk8aXRlbVR5cGU+REFUSzwvaXRlbVR5cGU+DQoJCQkJCQkJPHNrdT4wMDAwMDA2MTAyMTQ2NDI0MDA8L3NrdT4NCgkJCQkJCQk8cXVhbnRpdHk+MS4wMDAgPC9xdWFudGl0eT4NCgkJCQkJCQk8b3JkZXJEZXRhaWxJZD4xMDAyMjE4NzM8L29yZGVyRGV0YWlsSWQ+DQoJCQkJCQkJPHN1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+ZmFsc2U8L3N1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+DQoJCQkJCQkJPGRlZmVjdGl2ZVNLVT4wMDAwMDA2MTAyMTQ2NDI0MDA8L2RlZmVjdGl2ZVNLVT4NCgkJCQkJCQk8ZGVmZWN0aXZlU0tVRGVzY3JpcHRpb24+U0FNIE45MjBUIE5PVEUgNSAzMkcgQkxLIEtJVDwvZGVmZWN0aXZlU0tVRGVzY3JpcHRpb24+DQoJCQkJCQkJPGRlZmVjdGl2ZUlNRUk+MzUzNzU2MDc4ODEzNTczPC9kZWZlY3RpdmVJTUVJPg0KCQkJCQkJPC9vcmRlckl0ZW0+DQoJCQkJCQk8Y29tbWVudHM+SGFuZHNldC9EZXZpY2UgaXMgcmVhZHkgZm9yIHBpY2t1cCBhdCBTdG9yZSA0NTE8L2NvbW1lbnRzPg0KCQkJCQk8L29yZGVyU3VtbWFyeT4NCgkJCQkJPG9yZGVyU2hpcFRvQWRkcmVzcz4NCgkJCQkJCTxuYW1lPlRNIC0gU1VQRVJNQUxMPC9uYW1lPg0KCQkJCQkJPGFkZHJlc3NMaW5lMT4xMTAxIFNVUEVSTUFMTCBXQVkgU1RFIDEzMTc8L2FkZHJlc3NMaW5lMT4NCgkJCQkJCTxjaXR5PkFVQlVSTjwvY2l0eT4NCgkJCQkJCTx6aXBjb2RlPjk4MDAxLTY1MjY8L3ppcGNvZGU+DQoJCQkJCQk8c3RhdGU+V0E8L3N0YXRlPg0KCQkJCQkJPHNoaXBwaW5nTWV0aG9kPjA0PC9zaGlwcGluZ01ldGhvZD4NCgkJCQkJPC9vcmRlclNoaXBUb0FkZHJlc3M+DQoJCQkJCTxvcmRlckJpbGxUb0FkZHJlc3M+DQoJCQkJCQk8bmFtZT5UT0JZIEtFTk9CSTwvbmFtZT4NCgkJCQkJCTxhZGRyZXNzTGluZTE+MTEwMSBPdXRsZXQgQ29sbGVjdGlvbiBXYXkgU3RlIDEzMTc8L2FkZHJlc3NMaW5lMT4NCgkJCQkJCTxjaXR5PkF1YnVybjwvY2l0eT4NCgkJCQkJCTx6aXBjb2RlPjMwMzQ2PC96aXBjb2RlPg0KCQkJCQkJPHN0YXRlPkdBPC9zdGF0ZT4NCgkJCQkJPC9vcmRlckJpbGxUb0FkZHJlc3M+DQoJCQkJPC9vcmRlcj4NCgkJCTwvb3JkZXJMaXN0Pg0KCQk8L25zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdD4NCgk8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>createOrderEvent</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Web Service GetCustomerOrderDetails~1" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="C2E4F00C88AE11E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service createOrderEvent-completed" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.Web Service GetCustomerOrderDetails~1.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/ISF/getcustomerorderdetails.xml</file>
      <append>false</append>
      </Filter>


      <!-- Data Sets -->
<readrec>Read test data for getcustomerorderdetails for RP flow</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion~2 checks for: true is of type: XML XPath Assert.</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification/ns:FaultMessage</xpathq>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/Order.wsdl</wsdl>
<endpoint>http://qattbco522.unix.gsm1900.org:8115/Enterprise</endpoint>
<targetNamespace>http://www.t-mobile.com/es/order</targetNamespace>
<service>Order</service>
<port>Order</port>
<operation>GetCustomerOrderDetails</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPg0KICAgPHNvYXA6Qm9keT4NCiAgICAgIDxuczEzOmVzaUdldEN1c3RvbWVyT3JkZXJEZXRhaWxzUmVxdWVzdCB4bWxuczpuczEzPSJodHRwOi8vd3d3LnQtbW9iaWxlLmNvbS9lc2kvb3JkZXIvZ2V0Y3VzdG9tZXJvcmRlcmRldGFpbHMiPg0KICAgICAgICAgPHJlcXVlc3RIZWFkZXIgeG1sbnM9Imh0dHA6Ly93d3cudC1tb2JpbGUuY29tL2VzaS9iYXNlIj4NCiAgICAgICAgICAgIDxhcHBsaWNhdGlvbklkPnt7YXBwbGljYXRpb25JZH19PC9hcHBsaWNhdGlvbklkPg0KICAgICAgICAgICAgPGNoYW5uZWxJZD57e2NoYW5uZWxJZH19PC9jaGFubmVsSWQ+DQogICAgICAgICAgICA8b3BlcmF0b3JJZD4xOTkxPC9vcGVyYXRvcklkPg0KICAgICAgICAgICAgPGNsaWVudElkPnt7Y2xpZW50SWR9fTwvY2xpZW50SWQ+DQogICAgICAgICAgICA8YXBwbGljYXRpb25Vc2VySWQ+e3thcHBsaWNhdGlvblVzZXJJZH19PC9hcHBsaWNhdGlvblVzZXJJZD4NCiAgICAgICAgICAgIDxzdG9yZUlkPnt7c3RvcmVJZH19PC9zdG9yZUlkPg0KICAgICAgICAgICAgPGRlYWxlckNvZGU+e3tkZWFsZXJDb2RlfX08L2RlYWxlckNvZGU+DQogICAgICAgICAgICA8c2VuZGVySWQ+e3tzZW5kZXJJZH19PC9zZW5kZXJJZD4NCiANCiAgICAgICAgIDwvcmVxdWVzdEhlYWRlcj4NCiAgICAgICAgIDxuczEzOm9yZGVySWQ+e3tvcmRlcklkfX08L25zMTM6b3JkZXJJZD4NCiAgICAgICAgIDwvbnMxMzplc2lHZXRDdXN0b21lck9yZGVyRGV0YWlsc1JlcXVlc3Q+DQogICA8L3NvYXA6Qm9keT4NCjwvc29hcDpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>/ORDER/CUSTOMERORDERDETAILS/GET</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Web Service createOrderEvent-completed" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="7EE1BA0D8BEA11E7A6A9DEC320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service GetCustomerOrderDetails~2" > 


      <!-- Data Sets -->
<readrec>Read Rows from Excel File~2</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~4" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion~4 checks for: true is of type: XML XPath Assert.</log>
<then>abort</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/SOAP-ENV:Fault/detail/ns:Fault/ns:FaultNotification</xpathq>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-26/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>https://qattbco523.UNIX.GSM1900.ORG:5116/Event/Publish/OrderEvent</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjxzb2FwZW52OkVudmVsb3BlIHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiPg0KICA8c29hcGVudjpCb2R5Pg0KPG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+DQoJCQk8bnMxOkVCTUhlYWRlciB4bWxuczpuczE9Imh0dHA6Ly94bWxucy5vcmFjbGUuY29tL0VudGVycHJpc2VPYmplY3RzL0NvcmUvQ29tbW9uL1YyIj4NCgkJCQk8bnMxOlNlbmRlcj4NCgkJCQkJPG5zMTpJRD5QT1M8L25zMTpJRD4NCgkJCQkJPG5zMTpPYmplY3RDcm9zc1JlZmVyZW5jZT4NCgkJCQkJCTxuczE6U2VuZGVyT2JqZWN0SWRlbnRpZmljYXRpb24+DQoJCQkJCQkJPG5zMTpBcHBsaWNhdGlvbk9iamVjdEtleT4NCgkJCQkJCQkJPG5zMTpJRD5mNTYxZTlkYmNhMDY1NWIxOi1iNDZhNGUwOjE1ZGJjZDc1YzYxOjRmZWU8L25zMTpJRD4NCgkJCQkJCQk8L25zMTpBcHBsaWNhdGlvbk9iamVjdEtleT4NCgkJCQkJCTwvbnMxOlNlbmRlck9iamVjdElkZW50aWZpY2F0aW9uPg0KCQkJCQk8L25zMTpPYmplY3RDcm9zc1JlZmVyZW5jZT4NCgkJCQk8L25zMTpTZW5kZXI+DQoJCQk8L25zMTpFQk1IZWFkZXI+DQoJCQk8ZXZlbnRTdW1tYXJ5IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMwPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiPg0KCQkJCTxjaGFubmVsPlJldGFpbDwvY2hhbm5lbD4NCgkJCQk8ZXZlbnRUeXBlPkVYQ0hDb21wbGV0ZWQ8L2V2ZW50VHlwZT4NCgkJCQk8ZXZlbnREYXRlVGltZT4yMDE3LTA4LTA3VDE0OjIwOjU0LTA3OjAwPC9ldmVudERhdGVUaW1lPg0KCQkJPC9ldmVudFN1bW1hcnk+DQoJCQk8b3JkZXJMaXN0IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMwPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiPg0KCQkJCTxvcmRlcj4NCgkJCQkJPG9yZGVyU3VtbWFyeT4NCgkJCQkJCTxvcmRlck51bWJlcj57e29yZGVySWR9fTwvb3JkZXJOdW1iZXI+DQoJCQkJCQk8b3JkZXJTdGF0dXM+Q0w8L29yZGVyU3RhdHVzPg0KCQkJCQkJPG9yZGVySXRlbT4NCgkJCQkJCQk8bGluZU51bWJlcj4xPC9saW5lTnVtYmVyPg0KCQkJCQkJCTx0cmFuc2FjdGlvbklkPjIwMTcwODA3MDQ1MTY0MDAwMDAzPC90cmFuc2FjdGlvbklkPg0KCQkJCQkJCTx0cmFuc2FjdGlvbkRhdGVUaW1lPjIwMTctMDgtMDdUMTQ6MjE6MjktMDc6MDA8L3RyYW5zYWN0aW9uRGF0ZVRpbWU+DQoJCQkJCQk8L29yZGVySXRlbT4NCgkJCQkJCTxvcmRlclN1YlN0YXR1cz5QQzwvb3JkZXJTdWJTdGF0dXM+DQoJCQkJCTwvb3JkZXJTdW1tYXJ5Pg0KCQkJCTwvb3JkZXI+DQoJCQk8L29yZGVyTGlzdD4NCgkJPC9uczA6Q3JlYXRlT3JkZXJFdmVudFJlcXVlc3Q+DQoJPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</request>
<style>document</style>
<use>literal</use>
<soapAction>createOrderEvent</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Web Service GetCustomerOrderDetails~2" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="C2E4F00C88AE11E7A3B3E49B20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Write Properties to File Oup_RR.csv" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.Web Service GetCustomerOrderDetails~2.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/ISF/getcustomerorderdetails.xml</file>
      <append>false</append>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="XML XPath Assertion~2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Assertion name: XML XPath Assertion~2 checks for: true is of type: XML XPath Assert.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq></xpathq>
</CheckResult>

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/Order.wsdl</wsdl>
<endpoint>http://qattbco522.unix.gsm1900.org:8115/Enterprise</endpoint>
<targetNamespace>http://www.t-mobile.com/es/order</targetNamespace>
<service>Order</service>
<port>Order</port>
<operation>GetCustomerOrderDetails</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPg0KICAgPHNvYXA6Qm9keT4NCiAgICAgIDxuczEzOmVzaUdldEN1c3RvbWVyT3JkZXJEZXRhaWxzUmVxdWVzdCB4bWxuczpuczEzPSJodHRwOi8vd3d3LnQtbW9iaWxlLmNvbS9lc2kvb3JkZXIvZ2V0Y3VzdG9tZXJvcmRlcmRldGFpbHMiPg0KICAgICAgICAgPHJlcXVlc3RIZWFkZXIgeG1sbnM9Imh0dHA6Ly93d3cudC1tb2JpbGUuY29tL2VzaS9iYXNlIj4NCiAgICAgICAgICAgIDxhcHBsaWNhdGlvbklkPnt7YXBwbGljYXRpb25JZH19PC9hcHBsaWNhdGlvbklkPg0KICAgICAgICAgICAgPGNoYW5uZWxJZD57e2NoYW5uZWxJZH19PC9jaGFubmVsSWQ+DQogICAgICAgICAgICA8b3BlcmF0b3JJZD4xOTkxPC9vcGVyYXRvcklkPg0KICAgICAgICAgICAgPGNsaWVudElkPnt7Y2xpZW50SWR9fTwvY2xpZW50SWQ+DQogICAgICAgICAgICA8YXBwbGljYXRpb25Vc2VySWQ+e3thcHBsaWNhdGlvblVzZXJJZH19PC9hcHBsaWNhdGlvblVzZXJJZD4NCiAgICAgICAgICAgIDxzdG9yZUlkPnt7c3RvcmVJZH19PC9zdG9yZUlkPg0KICAgICAgICAgICAgPGRlYWxlckNvZGU+e3tkZWFsZXJDb2RlfX08L2RlYWxlckNvZGU+DQogICAgICAgICAgICA8c2VuZGVySWQ+e3tzZW5kZXJJZH19PC9zZW5kZXJJZD4NCiANCiAgICAgICAgIDwvcmVxdWVzdEhlYWRlcj4NCiAgICAgICAgIDxuczEzOm9yZGVySWQ+e3tvcmRlcklkfX08L25zMTM6b3JkZXJJZD4NCiAgICAgICAgIDwvbnMxMzplc2lHZXRDdXN0b21lck9yZGVyRGV0YWlsc1JlcXVlc3Q+DQogICA8L3NvYXA6Qm9keT4NCjwvc29hcDpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>/ORDER/CUSTOMERORDERDETAILS/GET</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>f5504e2d23a7888253a27e8ef52607d8</ssl-key-password-enc>
</sslInfo>
<wsiInfo>
<wsi-check-wsdl>false</wsi-check-wsdl>
<wsi-check-msg>false</wsi-check-msg>
<wsi-display-type>onlyFailed</wsi-display-type>
<wsi-on-fail>continue</wsi-on-fail>
</wsiInfo>
<transport>
<soapVersionUri>1.1</soapVersionUri>
<httpVersionUri>1.1</httpVersionUri>
<webMethodUri>POST</webMethodUri>
<mtom>false</mtom>
<dontSendRequest>false</dontSendRequest>
<fault-as-error>true</fault-as-error>
<callTimeout>30000</callTimeout>
</transport>
<uddiActive>false</uddiActive>
<uddi-result>
<uddi-selection>
</uddi-selection>
</uddi-result>
<wss4jInfo>
<version>5</version>
<wssecurity>
<isSend>true</isSend>
<must>false</must>
<role></role>
</wssecurity>
<wsi-bsp>false</wsi-bsp>
</wss4jInfo>
<wsaInfo>
<useAddressing>false</useAddressing>
<must>false</must>
<to></to>
<toOverride>false</toOverride>
<toDefault>true</toDefault>
<from></from>
<fromOverride>false</fromOverride>
<fromDefault>true</fromDefault>
<action></action>
<actionOverride>false</actionOverride>
<actionDefault>true</actionDefault>
<msgid></msgid>
<msgidOverride>false</msgidOverride>
<msgidDefault>true</msgidDefault>
<replyTo></replyTo>
<replyToOverride>false</replyToOverride>
<faultTo></faultTo>
<faulttToOverride>false</faulttToOverride>
<addressingVersion>http://www.w3.org/2005/08/addressing</addressingVersion>
</wsaInfo>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
<attachments>
<attachment-type>MIME</attachment-type>
</attachments>
<mtom-paths>
</mtom-paths>
    </Node>


    <Node name="Write Properties to File Oup_RR.csv" log=""
          type="com.itko.lisa.utils.WritePropsNode" 
          version="1" 
          uid="18B58E797C3211E7AB6378D920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

<file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/AWRE/Oup_RR.csv</file>
<encoding>DEFAULT</encoding>
<props>
    <Parameter>
    <key>getWarrantyeligibility_Response</key>
    <value>{[lisa.getWarrantyeligibility.rsp}}</value>
    </Parameter>
    <Parameter>
    <key>getDeviceeligibility_Response</key>
    <value>{{lisa.getDeviceeligibility.rsp}}</value>
    </Parameter>
    <Parameter>
    <key>getReplacementDevices_Response</key>
    <value>{{lisa.getReplacementDevices.rsp}}</value>
    </Parameter>
    <Parameter>
    <key>getPHPOffers_Response</key>
    <value>{{lisa.getPHPOffers.rsp}}</value>
    </Parameter>
    <Parameter>
    <key>getShippingOptions</key>
    <value>{{lisa.getShippingOptions.rsp}}</value>
    </Parameter>
    <Parameter>
    <key>confirmorder_response</key>
    <value>{{lisa.confirmorder.rsp}}</value>
    </Parameter>
    <Parameter>
    <key>Placed Order ID</key>
    <value>{{orderId}}</value>
    </Parameter>
</props>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="DF83AA7A7B4411E78DB9F41920524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="DF83AA787B4411E78DB9F41920524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="DF83AA767B4411E78DB9F41920524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read data for getWarrantyeligibility" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step1_getWarrantyeligibility</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getDeviceeeligbilty" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step2_getDeviceeligibility</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getReplacementDevices" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step3_getReplacementDevices</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="ReadData for getPHPoffers" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step4_getphpoffer</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getshippingOptions" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step5_getshippingoptions</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createsession" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step6_createsession</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for confirmorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>Step8_confirmorder</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createdraftorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step7_createdraftorder</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Rows from Excel File" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>GetCustomerOrderDetails</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read data for orderevnt-RP" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>createorderevent_RP</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read test data for getcustomerorderdetails for RP flow" atend="end" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>GetCustomerOrderDetails</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Rows from Excel File~2" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>createorderevent-completed</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Rows from Excel File~3" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>createorderevent_Shipped</sheetname>
    </DataSet>

</TestCase>
