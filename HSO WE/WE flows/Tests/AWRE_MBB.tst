<?xml version="1.0" ?>

<TestCase name="AWRE_MBB" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/07/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/20/2017" host="LP-R9WHCBM" />
</meta>

<id>DF83AA747B4411E78DB9F41920524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz01OTAyNzExOTA=</sig>
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
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/{{request}}</Loc>
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
      <jsonPath>$.eligibilityDetails.OTVforSelection.OrderTypeVersion[2].orderTypeVersion</jsonPath>
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

<url>http://devices-qlab02-api.test.px-01.cf.t-mobile.com/devicemanagement/v1/devices/warrantyeligibility/search</url>
<content>{{DEReq_2}}&#13;&#10;&#13;&#10;</content>
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
          next="Read file createDraftOrder.txt" > 


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


    <Node name="Read file createDraftOrder.txt" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="D85BE42D7B6A11E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response~6" > 


      <!-- Data Sets -->
<readrec>Read Data for createdraftorder</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/createDraftOrder.txt</Loc>
<charset>DEFAULT</charset>
<PropKey>Df_Req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response~6" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="C0B16E0E7B6B11E7856190E320524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Web Service CreateDraftOrder" > 

<text>e3tEZl9SZXExfX0=</text>
<propKey>Df_Req2</propKey>
    </Node>


    <Node name="Web Service CreateDraftOrder" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="9177867A840211E7A820D40F20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read file confirmOrder.txt" > 

<wsdl>https://{{WSSERVER}}:{{WSPORT}}/servicecat/tibco/2017-07-22/wsdl_api/wsdl/CommerceOrder.wsdl</wsdl>
<endpoint>http://QATTBCO522.unix.gsm1900.org:8115/service/soap/v1/CommerceManagement/Order</endpoint>
<targetNamespace>http://esp.t-mobile.com/service/commercemanagement/order</targetNamespace>
<service>CommerceOrderService</service>
<port>CommerceOrderPort</port>
<operation>CreateDraftOrder</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">e3tEZl9SZXEyfX0=</request>
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
          next="Write Properties to File Oup_RR.csv" > 


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


    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read data for getWarrantyeligibility" atend="end" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step1_getWarrantyeligibility</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getDeviceeeligbilty" atend="end" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step2_getDeviceeligibility</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getReplacementDevices" atend="end" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step3_getReplacementDevices</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="ReadData for getPHPoffers" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step4_getphpoffer</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for getshippingOptions" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step5_getshippingoptions</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createsession" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step6_createsession</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for createdraftorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step7_createdraftorder</sheetname>
    </DataSet>

    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for confirmorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData - MBB.xlsx</location>
    <sheetname>Step8_confirmorder</sheetname>
    </DataSet>

</TestCase>
