<?xml version="1.0" ?>

<TestCase name="ISF_MBB" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/07/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/20/2017" host="LP-R9WHCBM" />
</meta>

<id>DF83AA747B4411E78DB9F41920524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz0xNzQxOTI3NzU3</sig>
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
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/ISF/{{request}}</Loc>
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

<url>http://orders-eligibility-qlab02-api.test.px-01.cf.t-mobile.com/search</url>
<content>{{Req2}}</content>
<content-type></content-type>
<data-type>text</data-type>
      <header field="Content-Type" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>abort</onError>
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
      <valueProp>defectiveSKU</valueProp>
      <lengthProp></lengthProp>
      </Filter>

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
      <valueProp>productName</valueProp>
      <lengthProp></lengthProp>
      </Filter>

<url>http://replacementdevices-qlab02.test.px-01.cf.t-mobile.com/v1/replacementdevices/search</url>
<content>{{Rep_Req2}}</content>
<content-type></content-type>
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
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/{{request}}</Loc>
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
          next="Output Log Message" > 


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
<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/CommerceOrder.wsdl</wsdl>
<endpoint>http://QATTBCO522.unix.gsm1900.org:8115/service/soap/v1/CommerceManagement/Order</endpoint>
<targetNamespace>http://esp.t-mobile.com/service/commercemanagement/order</targetNamespace>
<service>CommerceOrderService</service>
<port>CommerceOrderPort</port>
<operation>CreateDraftOrder</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm9yZD0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY29tbWVyY2VtYW5hZ2VtZW50L29yZGVyIiB4bWxuczpjc289Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyIgeG1sbnM6Y29tPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGNyZWF0ZURyYWZ0T3JkZXJSZXF1ZXN0IHhtbG5zPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jb21tZXJjZW1hbmFnZW1lbnQvb3JkZXIiPg0KICAgICAgICAgPG5zMzpoZWFkZXIgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPg0KICAgICAgICAgICAgPG5zMzpzZW5kZXI+DQogICAgICAgICAgICAgICA8bnMzOnNlbmRlcklkPnt7c2VuZGVySWR9fTwvbnMzOnNlbmRlcklkPg0KICAgICAgICAgICAgICAgPG5zMzpjaGFubmVsSWQ+e3tjaGFubmVsSWR9fTwvbnMzOmNoYW5uZWxJZD4NCiAgICAgICAgICAgICAgIDxuczM6YXBwbGljYXRpb25JZD57e2FwcGxpY2F0aW9uSWR9fTwvbnMzOmFwcGxpY2F0aW9uSWQ+DQogICAgICAgICAgICAgICA8bnMzOmFwcGxpY2F0aW9uVXNlcklkPnt7YXBwbGljYXRpb25Vc2VySWR9fTwvbnMzOmFwcGxpY2F0aW9uVXNlcklkPg0KICAgICAgICAgICAgICAgPG5zMzpzZXNzaW9uSWQ+e3tzZXNzaW9uaWR9fTwvbnMzOnNlc3Npb25JZD4NCiAgICAgICAgICAgICAgIDxuczM6c3RvcmVJZD57e3N0b3JlSWR9fTwvbnMzOnN0b3JlSWQ+DQogICAgICAgICAgICAgICA8bnMzOmRlYWxlckNvZGU+e3tkZWFsZXJDb2RlfX08L25zMzpkZWFsZXJDb2RlPg0KICAgICAgICAgICAgPC9uczM6c2VuZGVyPg0KICAgICAgICAgICAgPG5zMzp0YXJnZXQ+DQogICAgICAgICAgICAgICA8bnMzOmN1c3RvbWVyQ29tcGFueUlkPnt7Y3VzdG9tZXJDb21wYW55SWR9fTwvbnMzOmN1c3RvbWVyQ29tcGFueUlkPg0KICAgICAgICAgICAgPC9uczM6dGFyZ2V0Pg0KICAgICAgICAgPC9uczM6aGVhZGVyPg0KICAgICAgICAgPG9yZGVyPg0KICAgICAgICAgICAgPG5zNDpvcmRlclR5cGUgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij5TVEFOREFSRDwvbnM0Om9yZGVyVHlwZT4NCiAgICAgICAgICAgIDxuczQ6YWNjb3VudEluZm8geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6YWNjb3VudE51bWJlcj57e0JBTn19PC9uczQ6YWNjb3VudE51bWJlcj4NCiAgICAgICAgICAgICAgIDxuczQ6c2VydmljZVN0YXJ0RGF0ZT4yMDE3LTAxLTIwVDA4OjAwOjAwWjwvbnM0OnNlcnZpY2VTdGFydERhdGU+DQogICAgICAgICAgICAgICA8bnM0OmFjY291bnRUeXBlPkk8L25zNDphY2NvdW50VHlwZT4NCiAgICAgICAgICAgICAgIDxuczQ6YWNjb3VudFN1YlR5cGU+UjwvbnM0OmFjY291bnRTdWJUeXBlPg0KICAgICAgICAgICAgICA8bnM0OmJpbGxpbmdDb250YWN0Pg0KICAgICAgICAgICAgICAgICAgPG5zMzpwZXJzb25OYW1lIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6Zmlyc3ROYW1lPkRMTTwvbnMzOmZpcnN0TmFtZT4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6bGFzdE5hbWU+UkVUQUlMIERBVEEgRE9OT1RVU0U8L25zMzpsYXN0TmFtZT4NCiAgICAgICAgICAgICAgICAgIDwvbnMzOnBlcnNvbk5hbWU+DQogICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzcz4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzc0xpbmUxPjEgUkFWSU5JQSBEUiBTVEUgMTAwMDwvbnMzOmFkZHJlc3NMaW5lMT4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6Y2l0eU5hbWU+QVRMQU5UQTwvbnMzOmNpdHlOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpzdGF0ZU5hbWU+R0E8L25zMzpzdGF0ZU5hbWU+DQogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmNvdW50cnlOYW1lPlVTQTwvbnMzOmNvdW50cnlOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpwb3N0YWxDb2RlPjMwMzQ2PC9uczM6cG9zdGFsQ29kZT4NCiAgICAgICAgICAgICAgICAgICAgIDwvbnMzOmFkZHJlc3M+DQogICAgICAgICAgICAgICAgICA8L25zMzphZGRyZXNzQ29tbXVuaWNhdGlvbj4NCiAgICAgICAgICAgICAgIDwvbnM0OmJpbGxpbmdDb250YWN0Pg0KICAgICAgICAgICAgPC9uczQ6YWNjb3VudEluZm8+DQogICAgICAgICAgICA8bnM0OnBheW1lbnQgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6cGF5bWVudFR5cGU+RFBZPC9uczQ6cGF5bWVudFR5cGU+DQogICAgICAgICAgICA8L25zNDpwYXltZW50Pg0KICAgICAgICAgICAgPG5zNDpub3RpZmljYXRpb24geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6bm90aWZpY2F0aW9uUHJlZmVyZW5jZT5TPC9uczQ6bm90aWZpY2F0aW9uUHJlZmVyZW5jZT4NCiAgICAgICAgICAgICAgIDxuczQ6TVNJU0ROPnt7TVNJU0ROfX08L25zNDpNU0lTRE4+DQogICAgICAgICAgICA8L25zNDpub3RpZmljYXRpb24+DQogICAgICAgICAgICA8bnM0OmhlYWRlckNoYXJnZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPg0KICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+Ni45OTwvbnM0OmFtb3VudD4NCiAgICAgICAgICAgICAgIDxuczQ6bmFtZT5TaGlwcGluZzwvbnM0Om5hbWU+DQogICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PlNoaXBwaW5nPC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT5TSElQUDwvbnM0OnJlZmVyZW5jZT4NCiAgICAgICAgICAgICAgIDxuczQ6U09DPlNISVBGRUU8L25zNDpTT0M+DQogICAgICAgICAgICA8L25zNDpoZWFkZXJDaGFyZ2U+DQogICAgICAgICAgICA8bnM0Om9yZGVyTGluZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPg0KICAgICAgICAgICAgICAgPG5zNDppZC8+DQogICAgICAgICAgICAgICA8bnM0OmZ1bGZpbGxtZW50TGluZUlkPjE8L25zNDpmdWxmaWxsbWVudExpbmVJZD4NCiAgICAgICAgICAgICAgIDxuczQ6ZGVsaXZlcnlNZXRob2Q+U0hQPC9uczQ6ZGVsaXZlcnlNZXRob2Q+DQogICAgICAgICAgICAgICA8bnM0OmRlc2NyaXB0aW9uPkdhbGF4eSBTNyBlZGdlIC0gU2lsdmVyIFRpdGFuaXVtIC0gMzJHQjwvbnM0OmRlc2NyaXB0aW9uPg0KICAgICAgICAgICAgICAgPG5zNDpzaG9ydERlc2NyaXB0aW9uPjYxMDIxNDY5NjQ4OTwvbnM0OnNob3J0RGVzY3JpcHRpb24+DQogICAgICAgICAgICAgICA8bnM0OmtpdENvZGU+UmVwbGFjZW1lbnRTS1U8L25zNDpraXRDb2RlPg0KICAgICAgICAgICAgICAgPG5zNDptYXJrZXRDb2RlPkFURzwvbnM0Om1hcmtldENvZGU+DQogICAgICAgICAgICAgICA8bnM0OnF1YW50aXR5PjE8L25zNDpxdWFudGl0eT4NCiAgICAgICAgICAgICAgIDxuczQ6dW5pdE9mTWVhc3VyZT5FQTwvbnM0OnVuaXRPZk1lYXN1cmU+DQogICAgICAgICAgICAgICA8bnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjM0LjU1PC9uczQ6YW1vdW50Pg0KICAgICAgICAgICAgICAgICAgPG5zNDpuYW1lPlJlc3RvY2tpbmdGZWU8L25zNDpuYW1lPg0KICAgICAgICAgICAgICAgICAgPG5zNDpjYXRlZ29yeT5JbmZvT25seTwvbnM0OmNhdGVnb3J5Pg0KICAgICAgICAgICAgICAgICAgPG5zNDpyZWZlcmVuY2U+UlNLRkU8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgICAgICAgICA8bnM0OlNPQz5SU0tGRUU8L25zNDpTT0M+DQogICAgICAgICAgICAgICA8L25zNDpjaGFyZ2U+DQogICAgICAgICAgICAgICA8bnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjI1LjU1PC9uczQ6YW1vdW50Pg0KICAgICAgICAgICAgICAgICAgPG5zNDpuYW1lPk9PV0ZlZTwvbnM0Om5hbWU+DQogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT5UTEFDQzwvbnM0OnJlZmVyZW5jZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6U09DPk9PV0ZFRTwvbnM0OlNPQz4NCiAgICAgICAgICAgICAgIDwvbnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+MDwvbnM0OmFtb3VudD4NCiAgICAgICAgICAgICAgICAgIDxuczQ6bmFtZT5SZXRhaWxQcmljZTwvbnM0Om5hbWU+DQogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICAgICA8L25zNDpjaGFyZ2U+DQogICAgICAgICAgICAgICA8bnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjA8L25zNDphbW91bnQ+DQogICAgICAgICAgICAgICAgICA8bnM0Om5hbWU+UmVwbGFjZW1lbnRTS1U8L25zNDpuYW1lPg0KICAgICAgICAgICAgICAgICAgPG5zNDpjYXRlZ29yeT5JbmZvT25seTwvbnM0OmNhdGVnb3J5Pg0KICAgICAgICAgICAgICAgICAgPG5zNDpyZWZlcmVuY2U+eWVzPC9uczQ6cmVmZXJlbmNlPg0KICAgICAgICAgICAgICAgPC9uczQ6Y2hhcmdlPg0KICAgICAgICAgICAgICAgPG5zNDpza3U+NjEwMjE0Njk2NDg5PC9uczQ6c2t1Pg0KICAgICAgICAgICAgICAgPG5zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICAgICAgICAgIDxuczQ6TVNJU0ROPnt7TVNJU0ROfX08L25zNDpNU0lTRE4+DQogICAgICAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICAgIDwvbnM0Om9yZGVyTGluZT4NCiAgICAgICAgICAgIDxuczQ6b3JkZXJMaW5lIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgICAgICA8bnM0OmlkLz4NCiAgICAgICAgICAgICAgIDxuczQ6ZnVsZmlsbG1lbnRMaW5lSWQ+MjwvbnM0OmZ1bGZpbGxtZW50TGluZUlkPg0KICAgICAgICAgICAgICAgPG5zNDpkZWxpdmVyeU1ldGhvZD5TSFA8L25zNDpkZWxpdmVyeU1ldGhvZD4NCiAgICAgICAgICAgICAgIDxuczQ6ZGVzY3JpcHRpb24+U2Ftc3VuZyAtIEdhbGF4eSBOb3RlIDM8L25zNDpkZXNjcmlwdGlvbj4NCiAgICAgICAgICAgICAgIDxuczQ6c2hvcnREZXNjcmlwdGlvbj42MTAyMTQ2NDI0MDA8L25zNDpzaG9ydERlc2NyaXB0aW9uPg0KICAgICAgICAgICAgICAgPG5zNDpraXRDb2RlPkRlZmVjdGl2ZVNLVTwvbnM0OmtpdENvZGU+DQogICAgICAgICAgICAgICA8bnM0OnF1YW50aXR5PjE8L25zNDpxdWFudGl0eT4NCiAgICAgICAgICAgICAgIDxuczQ6dW5pdE9mTWVhc3VyZT5FQTwvbnM0OnVuaXRPZk1lYXN1cmU+DQogICAgICAgICAgICAgICA8bnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjA8L25zNDphbW91bnQ+DQogICAgICAgICAgICAgICAgICA8bnM0Om5hbWU+RGVmZWN0aXZlU0tVPC9uczQ6bmFtZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6Y2F0ZWdvcnk+SW5mb09ubHk8L25zNDpjYXRlZ29yeT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6cmVmZXJlbmNlPnllczwvbnM0OnJlZmVyZW5jZT4NCiAgICAgICAgICAgICAgIDwvbnM0OmNoYXJnZT4NCiAgICAgICAgICAgICAgIDxuczQ6c2t1PjYxMDIxNDY0MjQwMDwvbnM0OnNrdT4NCiAgICAgICAgICAgICAgIDxuczQ6c3Vic2NyaWJlckluZm8+DQogICAgICAgICAgICAgICAgICA8bnM0Ok1TSVNETj57e01TSVNETn19PC9uczQ6TVNJU0ROPg0KICAgICAgICAgICAgICAgICAgPG5zNDpzZXJpYWxOdW1iZXI+e3tpbWVpfX08L25zNDpzZXJpYWxOdW1iZXI+DQogICAgICAgICAgICAgICAgICA8bnM0OlBIUEluZGljYXRvcj4wPC9uczQ6UEhQSW5kaWNhdG9yPg0KICAgICAgICAgICAgICAgICAgPG5zNDpTQVBXYXJyYW50eVR5cGU+UjwvbnM0OlNBUFdhcnJhbnR5VHlwZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6d2FycmFudHlUeXBlPlI8L25zNDp3YXJyYW50eVR5cGU+DQogICAgICAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICAgICAgIDxuczQ6ZGV2aWNlSXRlbT4NCiAgICAgICAgICAgICAgICAgIDxuczM6YmFzaWNJbmZvIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6bWFudWZhY3R1cmVyPlNhbXN1bmc8L25zMzptYW51ZmFjdHVyZXI+DQogICAgICAgICAgICAgICAgICA8L25zMzpiYXNpY0luZm8+DQogICAgICAgICAgICAgICAgICA8bnMzOmZpcnN0VXNlRGF0ZSB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+MjAxNy0wNy0yM1QyMToyNTo1Mlo8L25zMzpmaXJzdFVzZURhdGU+DQogICAgICAgICAgICAgICAgICA8bnMzOmxhc3RVc2VEYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE3LTA3LTI2VDIxOjI1OjUyWjwvbnMzOmxhc3RVc2VEYXRlPg0KICAgICAgICAgICAgICAgICAgPG5zMzp3YXJyYW50eUV4cGlyYXRpb25EYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE4LTA3LTIzVDA3OjAwOjAwWjwvbnMzOndhcnJhbnR5RXhwaXJhdGlvbkRhdGU+DQogICAgICAgICAgICAgICAgICA8bnMzOnR5cGUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPlQtTW9iaWxlIC0gTmV3PC9uczM6dHlwZT4NCiAgICAgICAgICAgICAgIDwvbnM0OmRldmljZUl0ZW0+DQogICAgICAgICAgICAgICA8bnM0OmlzQWRkRGV2aWNlPmZhbHNlPC9uczQ6aXNBZGREZXZpY2U+DQogICAgICAgICAgICAgICA8bnM0Omluc3VyYW5jZVJlcGxhY2VtZW50SW5kaWNhdG9yLz4NCiAgICAgICAgICAgIDwvbnM0Om9yZGVyTGluZT4NCiAgICAgICAgICAgIDxuczQ6c2hpcHBpbmdJbmZvIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgICAgICA8bnM0OnNoaXBwaW5nTW9kZT4NCiAgICAgICAgICAgICAgICAgIDxuczQ6Y29kZT4xMDwvbnM0OmNvZGU+DQogICAgICAgICAgICAgICAgICA8bnM0OmRlc2NyaXB0aW9uPlVQUyBHcm91bmQgLSBVcCB0byA3IGJ1c2luZXNzIGRheXMgKCQ2Ljk5KTwvbnM0OmRlc2NyaXB0aW9uPg0KICAgICAgICAgICAgICAgPC9uczQ6c2hpcHBpbmdNb2RlPg0KICAgICAgICAgICAgICAgPG5zNDpzaGlwVG9Db250YWN0Pg0KICAgICAgICAgICAgICAgICAgPG5zMzpwZXJzb25OYW1lIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6Zmlyc3ROYW1lPkRMTTwvbnMzOmZpcnN0TmFtZT4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6bGFzdE5hbWU+UkVUQUlMIERBVEEgRE9OT1RVU0U8L25zMzpsYXN0TmFtZT4NCiAgICAgICAgICAgICAgICAgIDwvbnMzOnBlcnNvbk5hbWU+DQogICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzcz4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzc0xpbmUxPjEgUkFWSU5JQSBEUiBTVEUgMTAwMDwvbnMzOmFkZHJlc3NMaW5lMT4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6Y2l0eU5hbWU+QVRMQU5UQTwvbnMzOmNpdHlOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpzdGF0ZU5hbWU+R0E8L25zMzpzdGF0ZU5hbWU+DQogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmNvdW50cnlOYW1lPlVTQTwvbnMzOmNvdW50cnlOYW1lPg0KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpwb3N0YWxDb2RlPjMwMzQ2PC9uczM6cG9zdGFsQ29kZT4NCiAgICAgICAgICAgICAgICAgICAgIDwvbnMzOmFkZHJlc3M+DQogICAgICAgICAgICAgICAgICA8L25zMzphZGRyZXNzQ29tbXVuaWNhdGlvbj4NCiAgICAgICAgICAgICAgICAgIDxuczM6ZW1haWxDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgICAgICAgIDxuczM6ZW1haWxBZGRyZXNzLz4NCiAgICAgICAgICAgICAgICAgIDwvbnMzOmVtYWlsQ29tbXVuaWNhdGlvbj4NCiAgICAgICAgICAgICAgIDwvbnM0OnNoaXBUb0NvbnRhY3Q+DQogICAgICAgICAgICA8L25zNDpzaGlwcGluZ0luZm8+DQogICAgICAgICAgICA8bnM0Om5vdGUgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICAgICAgIDxuczQ6cmVhc29uQ29kZT5BdWRpbyAvIFNwZWFrZXIgSXNzdWVzPC9uczQ6cmVhc29uQ29kZT4NCiAgICAgICAgICAgICAgIDxuczQ6bm90ZXM+d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3dzwvbnM0Om5vdGVzPg0KICAgICAgICAgICAgICAgPG5zNDpjdXN0b21lclNhdEluZGljYXRvcj5BdWRpbyAvIFNwZWFrZXIgSXNzdWVzPC9uczQ6Y3VzdG9tZXJTYXRJbmRpY2F0b3I+DQogICAgICAgICAgICA8L25zNDpub3RlPg0KICAgICAgICAgICA8bnM0OnRyYW5zYWN0aW9uVHlwZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPldBUlJBTlRZRVhDSEFOR0U8L25zNDp0cmFuc2FjdGlvblR5cGU+DQogICAgICAgICAgICA8bnM0OmluaXRpYXRpbmdTdG9yZUlkIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+e3tzdG9yZUlkfX08L25zNDppbml0aWF0aW5nU3RvcmVJZD4NCiAgICAgICAgICAgIDxuczQ6b3JkZXJUeXBlVmVyc2lvbiB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPnt7T1RWfX08L25zNDpvcmRlclR5cGVWZXJzaW9uPg0KICAgICAgICAgICAgPG5zNDppc1BIUERlY2xpbmVkIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+ZmFsc2U8L25zNDppc1BIUERlY2xpbmVkPg0KICAgICAgICAgPC9vcmRlcj4NCiAgICAgIDwvY3JlYXRlRHJhZnRPcmRlclJlcXVlc3Q+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>/CreateDraftOrder</soapAction>
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


    <Node name="Output Log Message" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="B0099D66857411E7A1C5D0F920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Read file confirmOrder.txt" > 

<log>{{orderId}}</log>
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
          next="Web Service createOrderEvent" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.confirmorder.rsp</valueToFilterKey>
      <jsonPath>$.confirmOrderResponse.order.status</jsonPath>
      <valueProp>status</valueProp>
      <lengthProp></lengthProp>
      </Filter>

      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.confirmorder.rsp</valueToFilterKey>
      <jsonPath>$.confirmOrderResponse.order.id</jsonPath>
      <valueProp>order_id</valueProp>
      <lengthProp></lengthProp>
      </Filter>

<url>https://qattbco522.unix.gsm1900.org:7116/service/rest/v1/CommerceManagement/Order/ConfirmOrder</url>
<content>{{order_req2}}</content>
<content-type>application/json</content-type>
<data-type>text</data-type>
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Web Service createOrderEvent" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="BEF3932C859311E7A1C5D0F920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Web Service createOrderEvent~1" > 

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-16/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>{{ENDPOINT1}}</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+DQoJCQk8ZXZlbnRTdW1tYXJ5IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMxPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiIHhtbG5zOlNPQVA9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIj4NCgkJCQk8ZXZlbnRUeXBlPnt7ZXZlbnRUeXBlfX08L2V2ZW50VHlwZT4NCgkJCQk8ZXZlbnREYXRlVGltZT4yMDE3LTA4LTA3VDE0OjExOjUzPC9ldmVudERhdGVUaW1lPg0KCQkJCTxub3RpZmljYXRpb25MaXN0Lz4NCgkJCTwvZXZlbnRTdW1tYXJ5Pg0KCQkJPG9yZGVyTGlzdCB4bWxuczpTT0FQLUVOVj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5zMT0iaHR0cDovL3NlcnZpY2VzLnRtb2JpbGUuY29tL29lIiB4bWxuczpTT0FQPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyI+DQoJCQkJPG9yZGVyPg0KCQkJCQk8b3JkZXJTdW1tYXJ5Pg0KCQkJCQkJPGJhbj57e0JBTn19PC9iYW4+DQoJCQkJCQk8bXNpc2RuPnt7TVNJU0ROfX08L21zaXNkbj4NCgkJCQkJCTxjaGFubmVsPjEyPC9jaGFubmVsPg0KCQkJCQkJPHN0b3JlSWQ+e3tzdG9yZUlkfX08L3N0b3JlSWQ+DQoJCQkJCQk8b3JpZ2luYWxTeXN0ZW1JZD5TVFJFPC9vcmlnaW5hbFN5c3RlbUlkPg0KCQkJCQkJPG9yZGVyTnVtYmVyPnt7b3JkZXJJZH19PC9vcmRlck51bWJlcj4NCgkJCQkJCTxzYXBPcmRlck51bWJlcj43MDAwMjA3MzIxPC9zYXBPcmRlck51bWJlcj4NCgkJCQkJCTxvcmRlclN0YXR1cz57e29yZGVyU3RhdHVzX1NTfX08L29yZGVyU3RhdHVzPg0KCQkJCQkJPG9yZGVyVHlwZT5aVzAxPC9vcmRlclR5cGU+DQoJCQkJCQk8b3JkZXJEYXRlVGltZT4yMDE3LTA4LTA3VDE0OjExOjUyPC9vcmRlckRhdGVUaW1lPg0KCQkJCQkJPHNoaXBwaW5nRGF0ZT4yMDE3LTA4LTA3VDE0OjExOjUyPC9zaGlwcGluZ0RhdGU+DQoJCQkJCQk8b3JkZXJJdGVtPg0KCQkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPg0KCQkJCQkJCTxkZXNjcmlwdGlvbj5TQU0gTjkyMFQgTk9URSA1IDMyRyBCTEsgS0lUPC9kZXNjcmlwdGlvbj4NCgkJCQkJCQk8aXRlbVR5cGU+REFUSzwvaXRlbVR5cGU+DQoJCQkJCQkJPHNrdT57e2RlZmVjdGl2ZVNLVX19PC9za3U+DQoJCQkJCQkJPHF1YW50aXR5PjEuMDAwIDwvcXVhbnRpdHk+DQoJCQkJCQkJPGltZWk+MzUzNzU2MDc3MDE0MTQwPC9pbWVpPg0KCQkJCQkJCTxvcmRlckRldGFpbElkPjEwMDIyMTg3Mzwvb3JkZXJEZXRhaWxJZD4NCgkJCQkJCQk8aW1laUJsb2NrSW5kaWNhdG9yPkE8L2ltZWlCbG9ja0luZGljYXRvcj4NCgkJCQkJCQk8c3VwcHJlc3NDdXN0b21lck5vdGlmaWNhdGlvbj5mYWxzZTwvc3VwcHJlc3NDdXN0b21lck5vdGlmaWNhdGlvbj4NCgkJCQkJCQk8ZGVmZWN0aXZlU0tVPnt7ZGVmZWN0aXZlU0tVfX08L2RlZmVjdGl2ZVNLVT4NCgkJCQkJCQk8ZGVmZWN0aXZlU0tVRGVzY3JpcHRpb24+U0FNIE45MjBUIE5PVEUgNSAzMkcgQkxLIEtJVDwvZGVmZWN0aXZlU0tVRGVzY3JpcHRpb24+DQoJCQkJCQkJPGRlZmVjdGl2ZUlNRUk+e3tpbWVpfX08L2RlZmVjdGl2ZUlNRUk+DQoJCQkJCQk8L29yZGVySXRlbT4NCgkJCQkJCTxvcmRlckRlbGl2ZXJ5Pg0KCQkJCQkJCTx0cmFja2luZ051bWJlcj4xWjNWODkxRjAyMjY0MDk0NjU8L3RyYWNraW5nTnVtYmVyPg0KCQkJCQkJCTxjb250YWN0SW5mby8+DQoJCQkJCQk8L29yZGVyRGVsaXZlcnk+DQoJCQkJCQk8Y29tbWVudHM+U2hpcHBlZCBPbiAyMDE3LTA4LTA3IFVQUzJEIFRyYWNraW5nICMgMVozVjg5MUYwMjI2NDA5NDY1IFN0b3JlID0gNDUxPC9jb21tZW50cz4NCgkJCQkJPC9vcmRlclN1bW1hcnk+DQoJCQkJCTxvcmRlclNoaXBUb0FkZHJlc3M+DQoJCQkJCQk8bmFtZT5UTSAtIFNVUEVSTUFMTDwvbmFtZT4NCgkJCQkJCTxhZGRyZXNzTGluZTE+MTEwMSBTVVBFUk1BTEwgV0FZIFNURSAxMzE3PC9hZGRyZXNzTGluZTE+DQoJCQkJCQk8Y2l0eT5BVUJVUk48L2NpdHk+DQoJCQkJCQk8emlwY29kZT45ODAwMS02NTI2PC96aXBjb2RlPg0KCQkJCQkJPHN0YXRlPldBPC9zdGF0ZT4NCgkJCQkJCTxzaGlwcGluZ01ldGhvZD4wNDwvc2hpcHBpbmdNZXRob2Q+DQoJCQkJCTwvb3JkZXJTaGlwVG9BZGRyZXNzPg0KCQkJCQk8b3JkZXJCaWxsVG9BZGRyZXNzPg0KCQkJCQkJPG5hbWU+VE9CWSBLRU5PQkk8L25hbWU+DQoJCQkJCQk8YWRkcmVzc0xpbmUxPjExMDEgT3V0bGV0IENvbGxlY3Rpb24gV2F5IFN0ZSAxMzE3PC9hZGRyZXNzTGluZTE+DQoJCQkJCQk8Y2l0eT5BdWJ1cm48L2NpdHk+DQoJCQkJCQk8emlwY29kZT4zMDM0NjwvemlwY29kZT4NCgkJCQkJCTxzdGF0ZT57e2JpbGxpbmdTdGF0ZX19PC9zdGF0ZT4NCgkJCQkJPC9vcmRlckJpbGxUb0FkZHJlc3M+DQoJCQkJPC9vcmRlcj4NCgkJCTwvb3JkZXJMaXN0Pg0KCTwvbnMwOkNyZWF0ZU9yZGVyRXZlbnRSZXF1ZXN0Pg==</request>
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


    <Node name="Web Service createOrderEvent~1" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="FBDBA0E859611E7A1C5D0F920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-16/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>{{ENDPOINT1}}</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+DQoJCQk8ZXZlbnRTdW1tYXJ5IHhtbG5zOlNPQVAtRU5WPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6bnMxPSJodHRwOi8vc2VydmljZXMudG1vYmlsZS5jb20vb2UiIHhtbG5zOlNPQVA9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIj4NCgkJCQk8ZXZlbnRUeXBlPnt7ZXZlbnRUeXBlfX08L2V2ZW50VHlwZT4NCgkJCQk8ZXZlbnREYXRlVGltZT4yMDE3LTA4LTA3VDE0OjEzOjMyPC9ldmVudERhdGVUaW1lPg0KCQkJCTxub3RpZmljYXRpb25MaXN0Lz4NCgkJCTwvZXZlbnRTdW1tYXJ5Pg0KCQkJPG9yZGVyTGlzdCB4bWxuczpTT0FQLUVOVj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5zMT0iaHR0cDovL3NlcnZpY2VzLnRtb2JpbGUuY29tL29lIiB4bWxuczpTT0FQPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyI+DQoJCQkJPG9yZGVyPg0KCQkJCQk8b3JkZXJTdW1tYXJ5Pg0KCQkJCQkJPGJhbj57e0JBTn19PC9iYW4+DQoJCQkJCQk8bXNpc2RuPnt7TVNJU0ROfX08L21zaXNkbj4NCgkJCQkJCTxjaGFubmVsPjEyPC9jaGFubmVsPg0KCQkJCQkJPHN0b3JlSWQ+NDUxPC9zdG9yZUlkPg0KCQkJCQkJPG9yaWdpbmFsU3lzdGVtSWQ+U1RSRTwvb3JpZ2luYWxTeXN0ZW1JZD4NCgkJCQkJCTxvcmRlck51bWJlcj57e29yZGVySWR9fTwvb3JkZXJOdW1iZXI+DQoJCQkJCQk8c2FwT3JkZXJOdW1iZXI+NzAwMDIwNzMyMTwvc2FwT3JkZXJOdW1iZXI+DQoJCQkJCQk8b3JkZXJTdGF0dXM+e3tvcmRlclN0YXR1c19SUH19PC9vcmRlclN0YXR1cz4NCgkJCQkJCTxvcmRlclR5cGU+WlcwMTwvb3JkZXJUeXBlPg0KCQkJCQkJPG9yZGVyRGF0ZVRpbWU+MjAxNy0wOC0wN1QxNDoxMzozMDwvb3JkZXJEYXRlVGltZT4NCgkJCQkJCTxvcmRlckl0ZW0+DQoJCQkJCQkJPG1zaXNkbj57e01TSVNETn19PC9tc2lzZG4+DQoJCQkJCQkJPGRlc2NyaXB0aW9uPlNBTSBOOTIwVCBOT1RFIDUgMzJHIEJMSyBLSVQ8L2Rlc2NyaXB0aW9uPg0KCQkJCQkJCTxpdGVtVHlwZT5EQVRLPC9pdGVtVHlwZT4NCgkJCQkJCQk8c2t1Pnt7ZGVmZWN0aXZlU0tVfX08L3NrdT4NCgkJCQkJCQk8cXVhbnRpdHk+MS4wMDAgPC9xdWFudGl0eT4NCgkJCQkJCQk8b3JkZXJEZXRhaWxJZD4xMDAyMjE4NzM8L29yZGVyRGV0YWlsSWQ+DQoJCQkJCQkJPHN1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+ZmFsc2U8L3N1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+DQoJCQkJCQkJPGRlZmVjdGl2ZVNLVT57e2RlZmVjdGl2ZVNLVX19PC9kZWZlY3RpdmVTS1U+DQoJCQkJCQkJPGRlZmVjdGl2ZVNLVURlc2NyaXB0aW9uPlNBTSBOOTIwVCBOT1RFIDUgMzJHIEJMSyBLSVQ8L2RlZmVjdGl2ZVNLVURlc2NyaXB0aW9uPg0KCQkJCQkJCTxkZWZlY3RpdmVJTUVJPnt7aW1laX19PC9kZWZlY3RpdmVJTUVJPg0KCQkJCQkJPC9vcmRlckl0ZW0+DQoJCQkJCQk8Y29tbWVudHM+SGFuZHNldC9EZXZpY2UgaXMgcmVhZHkgZm9yIHBpY2t1cCBhdCBTdG9yZSA0NTE8L2NvbW1lbnRzPg0KCQkJCQk8L29yZGVyU3VtbWFyeT4NCgkJCQkJPG9yZGVyU2hpcFRvQWRkcmVzcz4NCgkJCQkJCTxuYW1lPlRNIC0gU1VQRVJNQUxMPC9uYW1lPg0KCQkJCQkJPGFkZHJlc3NMaW5lMT4xMTAxIFNVUEVSTUFMTCBXQVkgU1RFIDEzMTc8L2FkZHJlc3NMaW5lMT4NCgkJCQkJCTxjaXR5PkFVQlVSTjwvY2l0eT4NCgkJCQkJCTx6aXBjb2RlPjk4MDAxLTY1MjY8L3ppcGNvZGU+DQoJCQkJCQk8c3RhdGU+V0E8L3N0YXRlPg0KCQkJCQkJPHNoaXBwaW5nTWV0aG9kPjA0PC9zaGlwcGluZ01ldGhvZD4NCgkJCQkJPC9vcmRlclNoaXBUb0FkZHJlc3M+DQoJCQkJCTxvcmRlckJpbGxUb0FkZHJlc3M+DQoJCQkJCQk8bmFtZT5UT0JZIEtFTk9CSTwvbmFtZT4NCgkJCQkJCTxhZGRyZXNzTGluZTE+MTEwMSBPdXRsZXQgQ29sbGVjdGlvbiBXYXkgU3RlIDEzMTc8L2FkZHJlc3NMaW5lMT4NCgkJCQkJCTxjaXR5PkF1YnVybjwvY2l0eT4NCgkJCQkJCTx6aXBjb2RlPjMwMzQ2PC96aXBjb2RlPg0KCQkJCQkJPHN0YXRlPnt7YmlsbGluZ1N0YXRlfX08L3N0YXRlPg0KCQkJCQk8L29yZGVyQmlsbFRvQWRkcmVzcz4NCgkJCQk8L29yZGVyPg0KCQkJPC9vcmRlckxpc3Q+DQoJCTwvbnMwOkNyZWF0ZU9yZGVyRXZlbnRSZXF1ZXN0Pg==</request>
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


    <Node name="Write Properties to File Oup_RR.csv" log=""
          type="com.itko.lisa.utils.WritePropsNode" 
          version="1" 
          uid="18B58E797C3211E7AB6378D920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Web Service createOrderEvent" > 

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


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="DF83AA767B4411E78DB9F41920524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

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


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="DF83AA7A7B4411E78DB9F41920524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read data for getWarrantyeligibility" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step1_getWarrantyeligibility</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getDeviceeeligbilty" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step2_getDeviceeligibility</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getReplacementDevices" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step3_getReplacementDevices</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="ReadData for getPHPoffers" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step4_getphpoffer</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getshippingOptions" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step5_getshippingoptions</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createsession" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step6_createsession</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for confirmorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step8_confirmorder</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createdraftorder" atend="end" local="false" random="false" maxItemsToFetch="0" >
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step7_createdraftorder</sheetname>
    </DataSet>

</TestCase>
