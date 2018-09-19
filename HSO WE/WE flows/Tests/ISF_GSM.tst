<?xml version="1.0" ?>

<TestCase name="ISF_GSM" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/07/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/23/2017" host="LP-R9WHCBM" />
</meta>

<id>DF83AA747B4411E78DB9F41920524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz0xNjgwOTcxNTIw</sig>
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

<url>http://orders-eligibility-qlab02-api.test.px-01.cf.t-mobile.com/search?key=value</url>
<content>{{Req2}}</content>
<content-type></content-type>
<data-type>text</data-type>
      <header field="Content-Type" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>continue (quiet)</onError>
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
<data-type>text</data-type>
      <header field="Content-Type" value="application/json" />
      <header field="Accept" value="application/json" />
<httpMethod>POST</httpMethod>
<onError>fail</onError>
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
<request itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm9yZD0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY29tbWVyY2VtYW5hZ2VtZW50L29yZGVyIiB4bWxuczpjc289Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyIgeG1sbnM6Y29tPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4KICAgPHNvYXBlbnY6SGVhZGVyLz4KICAgPHNvYXBlbnY6Qm9keT4KICAgICAgPGNyZWF0ZURyYWZ0T3JkZXJSZXF1ZXN0IHhtbG5zPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jb21tZXJjZW1hbmFnZW1lbnQvb3JkZXIiPgogICAgICAgICA8bnMzOmhlYWRlciB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+CiAgICAgICAgICAgIDxuczM6c2VuZGVyPgogICAgICAgICAgICAgICA8bnMzOnNlbmRlcklkPnt7c2VuZGVySWR9fTwvbnMzOnNlbmRlcklkPgogICAgICAgICAgICAgICA8bnMzOmNoYW5uZWxJZD57e2NoYW5uZWxJZH19PC9uczM6Y2hhbm5lbElkPgogICAgICAgICAgICAgICA8bnMzOmFwcGxpY2F0aW9uSWQ+e3thcHBsaWNhdGlvbklkfX08L25zMzphcHBsaWNhdGlvbklkPgogICAgICAgICAgICAgICA8bnMzOmFwcGxpY2F0aW9uVXNlcklkPnt7YXBwbGljYXRpb25Vc2VySWR9fTwvbnMzOmFwcGxpY2F0aW9uVXNlcklkPgogICAgICAgICAgICAgICA8bnMzOnNlc3Npb25JZD57e3Nlc3Npb25pZH19PC9uczM6c2Vzc2lvbklkPgogICAgICAgICAgICAgICA8bnMzOnN0b3JlSWQ+e3tzdG9yZUlkfX08L25zMzpzdG9yZUlkPgogICAgICAgICAgICAgICA8bnMzOmRlYWxlckNvZGU+e3tkZWFsZXJDb2RlfX08L25zMzpkZWFsZXJDb2RlPgogICAgICAgICAgICA8L25zMzpzZW5kZXI+CiAgICAgICAgICAgIDxuczM6dGFyZ2V0PgogICAgICAgICAgICAgICA8bnMzOmN1c3RvbWVyQ29tcGFueUlkPnt7Y3VzdG9tZXJDb21wYW55SWR9fTwvbnMzOmN1c3RvbWVyQ29tcGFueUlkPgogICAgICAgICAgICA8L25zMzp0YXJnZXQ+CiAgICAgICAgIDwvbnMzOmhlYWRlcj4KICAgICAgICAgPG9yZGVyPgogICAgICAgICAgICA8bnM0Om9yZGVyVHlwZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPlNUQU5EQVJEPC9uczQ6b3JkZXJUeXBlPgogICAgICAgICAgICA8bnM0OmFjY291bnRJbmZvIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+CiAgICAgICAgICAgICAgIDxuczQ6YWNjb3VudE51bWJlcj57e0JBTn19PC9uczQ6YWNjb3VudE51bWJlcj4KICAgICAgICAgICAgICAgPG5zNDpzZXJ2aWNlU3RhcnREYXRlPjIwMTctMDEtMjBUMDg6MDA6MDBaPC9uczQ6c2VydmljZVN0YXJ0RGF0ZT4KICAgICAgICAgICAgICAgPG5zNDphY2NvdW50VHlwZT5JPC9uczQ6YWNjb3VudFR5cGU+CiAgICAgICAgICAgICAgIDxuczQ6YWNjb3VudFN1YlR5cGU+UjwvbnM0OmFjY291bnRTdWJUeXBlPgogICAgICAgICAgICAgIDxuczQ6YmlsbGluZ0NvbnRhY3Q+CiAgICAgICAgICAgICAgICAgIDxuczM6cGVyc29uTmFtZSB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+CiAgICAgICAgICAgICAgICAgICAgIDxuczM6Zmlyc3ROYW1lPkRMTTwvbnMzOmZpcnN0TmFtZT4KICAgICAgICAgICAgICAgICAgICAgPG5zMzpsYXN0TmFtZT5SRVRBSUwgREFUQSBET05PVFVTRTwvbnMzOmxhc3ROYW1lPgogICAgICAgICAgICAgICAgICA8L25zMzpwZXJzb25OYW1lPgogICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4KICAgICAgICAgICAgICAgICAgICAgPG5zMzphZGRyZXNzPgogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmFkZHJlc3NMaW5lMT4xIFJBVklOSUEgRFIgU1RFIDEwMDA8L25zMzphZGRyZXNzTGluZTE+CiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6Y2l0eU5hbWU+QVRMQU5UQTwvbnMzOmNpdHlOYW1lPgogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOnN0YXRlTmFtZT5HQTwvbnMzOnN0YXRlTmFtZT4KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpjb3VudHJ5TmFtZT5VU0E8L25zMzpjb3VudHJ5TmFtZT4KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpwb3N0YWxDb2RlPjMwMzQ2PC9uczM6cG9zdGFsQ29kZT4KICAgICAgICAgICAgICAgICAgICAgPC9uczM6YWRkcmVzcz4KICAgICAgICAgICAgICAgICAgPC9uczM6YWRkcmVzc0NvbW11bmljYXRpb24+CiAgICAgICAgICAgICAgIDwvbnM0OmJpbGxpbmdDb250YWN0PgogICAgICAgICAgICA8L25zNDphY2NvdW50SW5mbz4KICAgICAgICAgICAgPG5zNDpwYXltZW50IHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+CiAgICAgICAgICAgICAgIDxuczQ6cGF5bWVudFR5cGU+RFBZPC9uczQ6cGF5bWVudFR5cGU+CiAgICAgICAgICAgIDwvbnM0OnBheW1lbnQ+CiAgICAgICAgICAgIDxuczQ6bm90aWZpY2F0aW9uIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+CiAgICAgICAgICAgICAgIDxuczQ6bm90aWZpY2F0aW9uUHJlZmVyZW5jZT5TPC9uczQ6bm90aWZpY2F0aW9uUHJlZmVyZW5jZT4KICAgICAgICAgICAgICAgPG5zNDpNU0lTRE4+e3tNU0lTRE59fTwvbnM0Ok1TSVNETj4KICAgICAgICAgICAgPC9uczQ6bm90aWZpY2F0aW9uPgogICAgICAgICAgICA8bnM0OmhlYWRlckNoYXJnZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPgogICAgICAgICAgICAgICA8bnM0OmFtb3VudD42Ljk5PC9uczQ6YW1vdW50PgogICAgICAgICAgICAgICA8bnM0Om5hbWU+U2hpcHBpbmc8L25zNDpuYW1lPgogICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PlNoaXBwaW5nPC9uczQ6Y2F0ZWdvcnk+CiAgICAgICAgICAgICAgIDxuczQ6cmVmZXJlbmNlPlNISVBQPC9uczQ6cmVmZXJlbmNlPgogICAgICAgICAgICAgICA8bnM0OlNPQz5TSElQRkVFPC9uczQ6U09DPgogICAgICAgICAgICA8L25zNDpoZWFkZXJDaGFyZ2U+CiAgICAgICAgICAgIDxuczQ6b3JkZXJMaW5lIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+CiAgICAgICAgICAgICAgIDxuczQ6aWQvPgogICAgICAgICAgICAgICA8bnM0OmZ1bGZpbGxtZW50TGluZUlkPjE8L25zNDpmdWxmaWxsbWVudExpbmVJZD4KICAgICAgICAgICAgICAgPG5zNDpkZWxpdmVyeU1ldGhvZD5TSFA8L25zNDpkZWxpdmVyeU1ldGhvZD4KICAgICAgICAgICAgICAgPG5zNDpkZXNjcmlwdGlvbj5HYWxheHkgUzcgZWRnZSAtIFNpbHZlciBUaXRhbml1bSAtIDMyR0I8L25zNDpkZXNjcmlwdGlvbj4KICAgICAgICAgICAgICAgPG5zNDpzaG9ydERlc2NyaXB0aW9uPjYxMDIxNDY5NjQ4OTwvbnM0OnNob3J0RGVzY3JpcHRpb24+CiAgICAgICAgICAgICAgIDxuczQ6a2l0Q29kZT5SZXBsYWNlbWVudFNLVTwvbnM0OmtpdENvZGU+CiAgICAgICAgICAgICAgIDxuczQ6bWFya2V0Q29kZT5BVEc8L25zNDptYXJrZXRDb2RlPgogICAgICAgICAgICAgICA8bnM0OnF1YW50aXR5PjE8L25zNDpxdWFudGl0eT4KICAgICAgICAgICAgICAgPG5zNDp1bml0T2ZNZWFzdXJlPkVBPC9uczQ6dW5pdE9mTWVhc3VyZT4KICAgICAgICAgICAgICAgPG5zNDpjaGFyZ2U+CiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjM0LjU1PC9uczQ6YW1vdW50PgogICAgICAgICAgICAgICAgICA8bnM0Om5hbWU+UmVzdG9ja2luZ0ZlZTwvbnM0Om5hbWU+CiAgICAgICAgICAgICAgICAgIDxuczQ6Y2F0ZWdvcnk+SW5mb09ubHk8L25zNDpjYXRlZ29yeT4KICAgICAgICAgICAgICAgICAgPG5zNDpyZWZlcmVuY2U+UlNLRkU8L25zNDpyZWZlcmVuY2U+CiAgICAgICAgICAgICAgICAgIDxuczQ6U09DPlJTS0ZFRTwvbnM0OlNPQz4KICAgICAgICAgICAgICAgPC9uczQ6Y2hhcmdlPgogICAgICAgICAgICAgICA8bnM0OmNoYXJnZT4KICAgICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+MjUuNTU8L25zNDphbW91bnQ+CiAgICAgICAgICAgICAgICAgIDxuczQ6bmFtZT5PT1dGZWU8L25zNDpuYW1lPgogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+CiAgICAgICAgICAgICAgICAgIDxuczQ6cmVmZXJlbmNlPlRMQUNDPC9uczQ6cmVmZXJlbmNlPgogICAgICAgICAgICAgICAgICA8bnM0OlNPQz5PT1dGRUU8L25zNDpTT0M+CiAgICAgICAgICAgICAgIDwvbnM0OmNoYXJnZT4KICAgICAgICAgICAgICAgPG5zNDpjaGFyZ2U+CiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjA8L25zNDphbW91bnQ+CiAgICAgICAgICAgICAgICAgIDxuczQ6bmFtZT5SZXRhaWxQcmljZTwvbnM0Om5hbWU+CiAgICAgICAgICAgICAgICAgIDxuczQ6Y2F0ZWdvcnk+SW5mb09ubHk8L25zNDpjYXRlZ29yeT4KICAgICAgICAgICAgICAgPC9uczQ6Y2hhcmdlPgogICAgICAgICAgICAgICA8bnM0OmNoYXJnZT4KICAgICAgICAgICAgICAgICAgPG5zNDphbW91bnQ+MDwvbnM0OmFtb3VudD4KICAgICAgICAgICAgICAgICAgPG5zNDpuYW1lPlJlcGxhY2VtZW50U0tVPC9uczQ6bmFtZT4KICAgICAgICAgICAgICAgICAgPG5zNDpjYXRlZ29yeT5JbmZvT25seTwvbnM0OmNhdGVnb3J5PgogICAgICAgICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT55ZXM8L25zNDpyZWZlcmVuY2U+CiAgICAgICAgICAgICAgIDwvbnM0OmNoYXJnZT4KICAgICAgICAgICAgICAgPG5zNDpza3U+NjEwMjE0Njk2NDg5PC9uczQ6c2t1PgogICAgICAgICAgICAgICA8bnM0OnN1YnNjcmliZXJJbmZvPgogICAgICAgICAgICAgICAgICA8bnM0Ok1TSVNETj57e01TSVNETn19PC9uczQ6TVNJU0ROPgogICAgICAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4KICAgICAgICAgICAgPC9uczQ6b3JkZXJMaW5lPgogICAgICAgICAgICA8bnM0Om9yZGVyTGluZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPgogICAgICAgICAgICAgICA8bnM0OmlkLz4KICAgICAgICAgICAgICAgPG5zNDpmdWxmaWxsbWVudExpbmVJZD4yPC9uczQ6ZnVsZmlsbG1lbnRMaW5lSWQ+CiAgICAgICAgICAgICAgIDxuczQ6ZGVsaXZlcnlNZXRob2Q+U0hQPC9uczQ6ZGVsaXZlcnlNZXRob2Q+CiAgICAgICAgICAgICAgIDxuczQ6ZGVzY3JpcHRpb24+U2Ftc3VuZyAtIEdhbGF4eSBOb3RlIDM8L25zNDpkZXNjcmlwdGlvbj4KICAgICAgICAgICAgICAgPG5zNDpzaG9ydERlc2NyaXB0aW9uPjYxMDIxNDY0MjQwMDwvbnM0OnNob3J0RGVzY3JpcHRpb24+CiAgICAgICAgICAgICAgIDxuczQ6a2l0Q29kZT5EZWZlY3RpdmVTS1U8L25zNDpraXRDb2RlPgogICAgICAgICAgICAgICA8bnM0OnF1YW50aXR5PjE8L25zNDpxdWFudGl0eT4KICAgICAgICAgICAgICAgPG5zNDp1bml0T2ZNZWFzdXJlPkVBPC9uczQ6dW5pdE9mTWVhc3VyZT4KICAgICAgICAgICAgICAgPG5zNDpjaGFyZ2U+CiAgICAgICAgICAgICAgICAgIDxuczQ6YW1vdW50PjA8L25zNDphbW91bnQ+CiAgICAgICAgICAgICAgICAgIDxuczQ6bmFtZT5EZWZlY3RpdmVTS1U8L25zNDpuYW1lPgogICAgICAgICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+CiAgICAgICAgICAgICAgICAgIDxuczQ6cmVmZXJlbmNlPnllczwvbnM0OnJlZmVyZW5jZT4KICAgICAgICAgICAgICAgPC9uczQ6Y2hhcmdlPgogICAgICAgICAgICAgICA8bnM0OnNrdT42MTAyMTQ2NDI0MDA8L25zNDpza3U+CiAgICAgICAgICAgICAgIDxuczQ6c3Vic2NyaWJlckluZm8+CiAgICAgICAgICAgICAgICAgIDxuczQ6TVNJU0ROPnt7TVNJU0ROfX08L25zNDpNU0lTRE4+CiAgICAgICAgICAgICAgICAgIDxuczQ6c2VyaWFsTnVtYmVyPnt7aW1laX19PC9uczQ6c2VyaWFsTnVtYmVyPgogICAgICAgICAgICAgICAgICA8bnM0OlBIUEluZGljYXRvcj4wPC9uczQ6UEhQSW5kaWNhdG9yPgogICAgICAgICAgICAgICAgICA8bnM0OlNBUFdhcnJhbnR5VHlwZT5SPC9uczQ6U0FQV2FycmFudHlUeXBlPgogICAgICAgICAgICAgICAgICA8bnM0OndhcnJhbnR5VHlwZT5SPC9uczQ6d2FycmFudHlUeXBlPgogICAgICAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4KICAgICAgICAgICAgICAgPG5zNDpkZXZpY2VJdGVtPgogICAgICAgICAgICAgICAgICA8bnMzOmJhc2ljSW5mbyB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+CiAgICAgICAgICAgICAgICAgICAgIDxuczM6bWFudWZhY3R1cmVyPlNhbXN1bmc8L25zMzptYW51ZmFjdHVyZXI+CiAgICAgICAgICAgICAgICAgIDwvbnMzOmJhc2ljSW5mbz4KICAgICAgICAgICAgICAgICAgPG5zMzpmaXJzdFVzZURhdGUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPjIwMTctMDctMjNUMjE6MjU6NTJaPC9uczM6Zmlyc3RVc2VEYXRlPgogICAgICAgICAgICAgICAgICA8bnMzOmxhc3RVc2VEYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE3LTA3LTI2VDIxOjI1OjUyWjwvbnMzOmxhc3RVc2VEYXRlPgogICAgICAgICAgICAgICAgICA8bnMzOndhcnJhbnR5RXhwaXJhdGlvbkRhdGUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPjIwMTgtMDctMjNUMDc6MDA6MDBaPC9uczM6d2FycmFudHlFeHBpcmF0aW9uRGF0ZT4KICAgICAgICAgICAgICAgICAgPG5zMzp0eXBlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj5ULU1vYmlsZSAtIE5ldzwvbnMzOnR5cGU+CiAgICAgICAgICAgICAgIDwvbnM0OmRldmljZUl0ZW0+CiAgICAgICAgICAgICAgIDxuczQ6aXNBZGREZXZpY2U+ZmFsc2U8L25zNDppc0FkZERldmljZT4KICAgICAgICAgICAgICAgPG5zNDppbnN1cmFuY2VSZXBsYWNlbWVudEluZGljYXRvci8+CiAgICAgICAgICAgIDwvbnM0Om9yZGVyTGluZT4KICAgICAgICAgICAgPG5zNDpzaGlwcGluZ0luZm8geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4KICAgICAgICAgICAgICAgPG5zNDpzaGlwcGluZ01vZGU+CiAgICAgICAgICAgICAgICAgIDxuczQ6Y29kZT4xMDwvbnM0OmNvZGU+CiAgICAgICAgICAgICAgICAgIDxuczQ6ZGVzY3JpcHRpb24+VVBTIEdyb3VuZCAtIFVwIHRvIDcgYnVzaW5lc3MgZGF5cyAoJDYuOTkpPC9uczQ6ZGVzY3JpcHRpb24+CiAgICAgICAgICAgICAgIDwvbnM0OnNoaXBwaW5nTW9kZT4KICAgICAgICAgICAgICAgPG5zNDpzaGlwVG9Db250YWN0PgogICAgICAgICAgICAgICAgICA8bnMzOnBlcnNvbk5hbWUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPgogICAgICAgICAgICAgICAgICAgICA8bnMzOmZpcnN0TmFtZT5ETE08L25zMzpmaXJzdE5hbWU+CiAgICAgICAgICAgICAgICAgICAgIDxuczM6bGFzdE5hbWU+UkVUQUlMIERBVEEgRE9OT1RVU0U8L25zMzpsYXN0TmFtZT4KICAgICAgICAgICAgICAgICAgPC9uczM6cGVyc29uTmFtZT4KICAgICAgICAgICAgICAgICAgPG5zMzphZGRyZXNzQ29tbXVuaWNhdGlvbiB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+CiAgICAgICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzcz4KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzphZGRyZXNzTGluZTE+MSBSQVZJTklBIERSIFNURSAxMDAwPC9uczM6YWRkcmVzc0xpbmUxPgogICAgICAgICAgICAgICAgICAgICAgICA8bnMzOmNpdHlOYW1lPkFUTEFOVEE8L25zMzpjaXR5TmFtZT4KICAgICAgICAgICAgICAgICAgICAgICAgPG5zMzpzdGF0ZU5hbWU+R0E8L25zMzpzdGF0ZU5hbWU+CiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6Y291bnRyeU5hbWU+VVNBPC9uczM6Y291bnRyeU5hbWU+CiAgICAgICAgICAgICAgICAgICAgICAgIDxuczM6cG9zdGFsQ29kZT4zMDM0NjwvbnMzOnBvc3RhbENvZGU+CiAgICAgICAgICAgICAgICAgICAgIDwvbnMzOmFkZHJlc3M+CiAgICAgICAgICAgICAgICAgIDwvbnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uPgogICAgICAgICAgICAgICAgICA8bnMzOmVtYWlsQ29tbXVuaWNhdGlvbiB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+CiAgICAgICAgICAgICAgICAgICAgIDxuczM6ZW1haWxBZGRyZXNzLz4KICAgICAgICAgICAgICAgICAgPC9uczM6ZW1haWxDb21tdW5pY2F0aW9uPgogICAgICAgICAgICAgICA8L25zNDpzaGlwVG9Db250YWN0PgogICAgICAgICAgICA8L25zNDpzaGlwcGluZ0luZm8+CiAgICAgICAgICAgIDxuczQ6bm90ZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPgogICAgICAgICAgICAgICA8bnM0OnJlYXNvbkNvZGU+QXVkaW8gLyBTcGVha2VyIElzc3VlczwvbnM0OnJlYXNvbkNvZGU+CiAgICAgICAgICAgICAgIDxuczQ6bm90ZXM+d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3dzwvbnM0Om5vdGVzPgogICAgICAgICAgICAgICA8bnM0OmN1c3RvbWVyU2F0SW5kaWNhdG9yPkF1ZGlvIC8gU3BlYWtlciBJc3N1ZXM8L25zNDpjdXN0b21lclNhdEluZGljYXRvcj4KICAgICAgICAgICAgPC9uczQ6bm90ZT4KICAgICAgICAgICA8bnM0OnRyYW5zYWN0aW9uVHlwZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPldBUlJBTlRZRVhDSEFOR0U8L25zNDp0cmFuc2FjdGlvblR5cGU+CiAgICAgICAgICAgIDxuczQ6aW5pdGlhdGluZ1N0b3JlSWQgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij57e3N0b3JlSWR9fTwvbnM0OmluaXRpYXRpbmdTdG9yZUlkPgogICAgICAgICAgICA8bnM0Om9yZGVyVHlwZVZlcnNpb24geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij57e09UVn19PC9uczQ6b3JkZXJUeXBlVmVyc2lvbj4KICAgICAgICAgICAgPG5zNDppc1BIUERlY2xpbmVkIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+ZmFsc2U8L25zNDppc1BIUERlY2xpbmVkPgogICAgICAgICA8L29yZGVyPgogICAgICA8L2NyZWF0ZURyYWZ0T3JkZXJSZXF1ZXN0PgogICA8L3NvYXBlbnY6Qm9keT4KPC9zb2FwZW52OkVudmVsb3BlPg==</request>
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
          next="Web Service createOrderEvent-Shipped" > 


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


    <Node name="Web Service createOrderEvent-Shipped" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="BEF3932C859311E7A1C5D0F920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="createorderevent-Ready To Pickup" > 


      <!-- Data Sets -->
<readrec>Read Rows from Excel File</readrec>
<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-16/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>https://qattbco523.UNIX.GSM1900.ORG:5116/Event/Publish/OrderEvent</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+CgkJCTxldmVudFN1bW1hcnkgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczpuczE9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgeG1sbnM6U09BUD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPgoJCQkJPGV2ZW50VHlwZT57e2V2ZW50VHlwZX19PC9ldmVudFR5cGU+CgkJCQk8ZXZlbnREYXRlVGltZT4yMDE3LTA4LTA3VDE0OjExOjUzPC9ldmVudERhdGVUaW1lPgoJCQkJPG5vdGlmaWNhdGlvbkxpc3QvPgoJCQk8L2V2ZW50U3VtbWFyeT4KCQkJPG9yZGVyTGlzdCB4bWxuczpTT0FQLUVOVj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5zMT0iaHR0cDovL3NlcnZpY2VzLnRtb2JpbGUuY29tL29lIiB4bWxuczpTT0FQPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyI+CgkJCQk8b3JkZXI+CgkJCQkJPG9yZGVyU3VtbWFyeT4KCQkJCQkJPGJhbj57e0JBTn19PC9iYW4+CgkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPgoJCQkJCQk8Y2hhbm5lbD4xMjwvY2hhbm5lbD4KCQkJCQkJPHN0b3JlSWQ+e3tzdG9yZUlkfX08L3N0b3JlSWQ+CgkJCQkJCTxvcmlnaW5hbFN5c3RlbUlkPlNUUkU8L29yaWdpbmFsU3lzdGVtSWQ+CgkJCQkJCTxvcmRlck51bWJlcj57e29yZGVySWR9fTwvb3JkZXJOdW1iZXI+CgkJCQkJCTxzYXBPcmRlck51bWJlcj43MDAwMjA3MzIxPC9zYXBPcmRlck51bWJlcj4KCQkJCQkJPG9yZGVyU3RhdHVzPnt7b3JkZXJTdGF0dXNfU1N9fTwvb3JkZXJTdGF0dXM+CgkJCQkJCTxvcmRlclR5cGU+WlcwMTwvb3JkZXJUeXBlPgoJCQkJCQk8b3JkZXJEYXRlVGltZT4yMDE3LTA4LTA3VDE0OjExOjUyPC9vcmRlckRhdGVUaW1lPgoJCQkJCQk8c2hpcHBpbmdEYXRlPjIwMTctMDgtMDdUMTQ6MTE6NTI8L3NoaXBwaW5nRGF0ZT4KCQkJCQkJPG9yZGVySXRlbT4KCQkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPgoJCQkJCQkJPGRlc2NyaXB0aW9uPlNBTSBOOTIwVCBOT1RFIDUgMzJHIEJMSyBLSVQ8L2Rlc2NyaXB0aW9uPgoJCQkJCQkJPGl0ZW1UeXBlPkRBVEs8L2l0ZW1UeXBlPgoJCQkJCQkJPHNrdT57e2RlZmVjdGl2ZVNLVX19PC9za3U+CgkJCQkJCQk8cXVhbnRpdHk+MS4wMDAgPC9xdWFudGl0eT4KCQkJCQkJCTxpbWVpPjM1Mzc1NjA3NzAxNDE0MDwvaW1laT4KCQkJCQkJCTxvcmRlckRldGFpbElkPjEwMDIyMTg3Mzwvb3JkZXJEZXRhaWxJZD4KCQkJCQkJCTxpbWVpQmxvY2tJbmRpY2F0b3I+QTwvaW1laUJsb2NrSW5kaWNhdG9yPgoJCQkJCQkJPHN1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+ZmFsc2U8L3N1cHByZXNzQ3VzdG9tZXJOb3RpZmljYXRpb24+CgkJCQkJCQk8ZGVmZWN0aXZlU0tVPnt7ZGVmZWN0aXZlU0tVfX08L2RlZmVjdGl2ZVNLVT4KCQkJCQkJCTxkZWZlY3RpdmVTS1VEZXNjcmlwdGlvbj5TQU0gTjkyMFQgTk9URSA1IDMyRyBCTEsgS0lUPC9kZWZlY3RpdmVTS1VEZXNjcmlwdGlvbj4KCQkJCQkJCTxkZWZlY3RpdmVJTUVJPnt7aW1laX19PC9kZWZlY3RpdmVJTUVJPgoJCQkJCQk8L29yZGVySXRlbT4KCQkJCQkJPG9yZGVyRGVsaXZlcnk+CgkJCQkJCQk8dHJhY2tpbmdOdW1iZXI+MVozVjg5MUYwMjI2NDA5NDY1PC90cmFja2luZ051bWJlcj4KCQkJCQkJCTxjb250YWN0SW5mby8+CgkJCQkJCTwvb3JkZXJEZWxpdmVyeT4KCQkJCQkJPGNvbW1lbnRzPlNoaXBwZWQgT24gMjAxNy0wOC0wNyBVUFMyRCBUcmFja2luZyAjIDFaM1Y4OTFGMDIyNjQwOTQ2NSBTdG9yZSA9IDQ1MTwvY29tbWVudHM+CgkJCQkJPC9vcmRlclN1bW1hcnk+CgkJCQkJPG9yZGVyU2hpcFRvQWRkcmVzcz4KCQkJCQkJPG5hbWU+VE0gLSBTVVBFUk1BTEw8L25hbWU+CgkJCQkJCTxhZGRyZXNzTGluZTE+MTEwMSBTVVBFUk1BTEwgV0FZIFNURSAxMzE3PC9hZGRyZXNzTGluZTE+CgkJCQkJCTxjaXR5PkFVQlVSTjwvY2l0eT4KCQkJCQkJPHppcGNvZGU+OTgwMDEtNjUyNjwvemlwY29kZT4KCQkJCQkJPHN0YXRlPldBPC9zdGF0ZT4KCQkJCQkJPHNoaXBwaW5nTWV0aG9kPjA0PC9zaGlwcGluZ01ldGhvZD4KCQkJCQk8L29yZGVyU2hpcFRvQWRkcmVzcz4KCQkJCQk8b3JkZXJCaWxsVG9BZGRyZXNzPgoJCQkJCQk8bmFtZT5UT0JZIEtFTk9CSTwvbmFtZT4KCQkJCQkJPGFkZHJlc3NMaW5lMT4xMTAxIE91dGxldCBDb2xsZWN0aW9uIFdheSBTdGUgMTMxNzwvYWRkcmVzc0xpbmUxPgoJCQkJCQk8Y2l0eT5BdWJ1cm48L2NpdHk+CgkJCQkJCTx6aXBjb2RlPjMwMzQ2PC96aXBjb2RlPgoJCQkJCQk8c3RhdGU+e3tiaWxsaW5nU3RhdGV9fTwvc3RhdGU+CgkJCQkJPC9vcmRlckJpbGxUb0FkZHJlc3M+CgkJCQk8L29yZGVyPgoJCQk8L29yZGVyTGlzdD4KCTwvbnMwOkNyZWF0ZU9yZGVyRXZlbnRSZXF1ZXN0Pg==</request>
<style>document</style>
<use>literal</use>
<soapAction>createOrderEvent</soapAction>
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


    <Node name="createorderevent-Ready To Pickup" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="FBDBA0E859611E7A1C5D0F920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Write Properties to File Oup_RR.csv" > 

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-08-16/wsdl_api/wsdl/OrderEvent.wsdl</wsdl>
<endpoint>https://qattbco523.UNIX.GSM1900.ORG:5116/Event/Publish/OrderEvent</endpoint>
<targetNamespace>http://services.tmobile.com/oe</targetNamespace>
<service>OrderEvent</service>
<port>OrderEvent</port>
<operation>createOrderEvent</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PG5zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdCB4bWxuczpuczA9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgbGFuZ3VhZ2VDb2RlPSJlbi1VUyI+CgkJCTxldmVudFN1bW1hcnkgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczpuczE9Imh0dHA6Ly9zZXJ2aWNlcy50bW9iaWxlLmNvbS9vZSIgeG1sbnM6U09BUD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPgoJCQkJPGV2ZW50VHlwZT57e2V2ZW50VHlwZX19PC9ldmVudFR5cGU+CgkJCQk8ZXZlbnREYXRlVGltZT4yMDE3LTA4LTA3VDE0OjEzOjMyPC9ldmVudERhdGVUaW1lPgoJCQkJPG5vdGlmaWNhdGlvbkxpc3QvPgoJCQk8L2V2ZW50U3VtbWFyeT4KCQkJPG9yZGVyTGlzdCB4bWxuczpTT0FQLUVOVj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5zMT0iaHR0cDovL3NlcnZpY2VzLnRtb2JpbGUuY29tL29lIiB4bWxuczpTT0FQPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyI+CgkJCQk8b3JkZXI+CgkJCQkJPG9yZGVyU3VtbWFyeT4KCQkJCQkJPGJhbj57e0JBTn19PC9iYW4+CgkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPgoJCQkJCQk8Y2hhbm5lbD4xMjwvY2hhbm5lbD4KCQkJCQkJPHN0b3JlSWQ+NDUxPC9zdG9yZUlkPgoJCQkJCQk8b3JpZ2luYWxTeXN0ZW1JZD5TVFJFPC9vcmlnaW5hbFN5c3RlbUlkPgoJCQkJCQk8b3JkZXJOdW1iZXI+e3tvcmRlcklkfX08L29yZGVyTnVtYmVyPgoJCQkJCQk8c2FwT3JkZXJOdW1iZXI+NzAwMDIwNzMyMTwvc2FwT3JkZXJOdW1iZXI+CgkJCQkJCTxvcmRlclN0YXR1cz57e29yZGVyU3RhdHVzX1JQfX08L29yZGVyU3RhdHVzPgoJCQkJCQk8b3JkZXJUeXBlPlpXMDE8L29yZGVyVHlwZT4KCQkJCQkJPG9yZGVyRGF0ZVRpbWU+MjAxNy0wOC0wN1QxNDoxMzozMDwvb3JkZXJEYXRlVGltZT4KCQkJCQkJPG9yZGVySXRlbT4KCQkJCQkJCTxtc2lzZG4+e3tNU0lTRE59fTwvbXNpc2RuPgoJCQkJCQkJPGRlc2NyaXB0aW9uPlNBTSBOOTIwVCBOT1RFIDUgMzJHIEJMSyBLSVQ8L2Rlc2NyaXB0aW9uPgoJCQkJCQkJPGl0ZW1UeXBlPkRBVEs8L2l0ZW1UeXBlPgoJCQkJCQkJPHNrdT57e2RlZmVjdGl2ZVNLVX19PC9za3U+CgkJCQkJCQk8cXVhbnRpdHk+MS4wMDAgPC9xdWFudGl0eT4KCQkJCQkJCTxvcmRlckRldGFpbElkPjEwMDIyMTg3Mzwvb3JkZXJEZXRhaWxJZD4KCQkJCQkJCTxzdXBwcmVzc0N1c3RvbWVyTm90aWZpY2F0aW9uPmZhbHNlPC9zdXBwcmVzc0N1c3RvbWVyTm90aWZpY2F0aW9uPgoJCQkJCQkJPGRlZmVjdGl2ZVNLVT57e2RlZmVjdGl2ZVNLVX19PC9kZWZlY3RpdmVTS1U+CgkJCQkJCQk8ZGVmZWN0aXZlU0tVRGVzY3JpcHRpb24+U0FNIE45MjBUIE5PVEUgNSAzMkcgQkxLIEtJVDwvZGVmZWN0aXZlU0tVRGVzY3JpcHRpb24+CgkJCQkJCQk8ZGVmZWN0aXZlSU1FST57e2ltZWl9fTwvZGVmZWN0aXZlSU1FST4KCQkJCQkJPC9vcmRlckl0ZW0+CgkJCQkJCTxjb21tZW50cz5IYW5kc2V0L0RldmljZSBpcyByZWFkeSBmb3IgcGlja3VwIGF0IFN0b3JlIDQ1MTwvY29tbWVudHM+CgkJCQkJPC9vcmRlclN1bW1hcnk+CgkJCQkJPG9yZGVyU2hpcFRvQWRkcmVzcz4KCQkJCQkJPG5hbWU+VE0gLSBTVVBFUk1BTEw8L25hbWU+CgkJCQkJCTxhZGRyZXNzTGluZTE+MTEwMSBTVVBFUk1BTEwgV0FZIFNURSAxMzE3PC9hZGRyZXNzTGluZTE+CgkJCQkJCTxjaXR5PkFVQlVSTjwvY2l0eT4KCQkJCQkJPHppcGNvZGU+OTgwMDEtNjUyNjwvemlwY29kZT4KCQkJCQkJPHN0YXRlPldBPC9zdGF0ZT4KCQkJCQkJPHNoaXBwaW5nTWV0aG9kPjA0PC9zaGlwcGluZ01ldGhvZD4KCQkJCQk8L29yZGVyU2hpcFRvQWRkcmVzcz4KCQkJCQk8b3JkZXJCaWxsVG9BZGRyZXNzPgoJCQkJCQk8bmFtZT5UT0JZIEtFTk9CSTwvbmFtZT4KCQkJCQkJPGFkZHJlc3NMaW5lMT4xMTAxIE91dGxldCBDb2xsZWN0aW9uIFdheSBTdGUgMTMxNzwvYWRkcmVzc0xpbmUxPgoJCQkJCQk8Y2l0eT5BdWJ1cm48L2NpdHk+CgkJCQkJCTx6aXBjb2RlPjMwMzQ2PC96aXBjb2RlPgoJCQkJCQk8c3RhdGU+e3tiaWxsaW5nU3RhdGV9fTwvc3RhdGU+CgkJCQkJPC9vcmRlckJpbGxUb0FkZHJlc3M+CgkJCQk8L29yZGVyPgoJCQk8L29yZGVyTGlzdD4KCQk8L25zMDpDcmVhdGVPcmRlckV2ZW50UmVxdWVzdD4=</request>
<style>document</style>
<use>literal</use>
<soapAction>createOrderEvent</soapAction>
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

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createdraftorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step7_createdraftorder</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Rows from Excel File" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAABB3CAAAABAAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/ISF/ISF_TestData.xlsx</location>
    <sheetname>createorderevent_Shipped</sheetname>
    </DataSet>

</TestCase>
