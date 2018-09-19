<?xml version="1.0" ?>

<TestCase name="easy-techm" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="11/22/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="11/22/2017" host="inbasdpc10722" />
</meta>

<id>4FF4DA7BCF6611E79757D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tMTcyNDUwODcwMA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="Get" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7A4BA142CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement: EASY - Login - Tech Mahindra" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;get&quot;,&quot;url&quot;:&quot;{{ENDPOINT1}}&quot;}]</json>
<params>
<Parameter>
<key>Get</key>
<value>path={{ENDPOINT1}}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement: EASY - Login - Tech Mahindra" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAC5EE5CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="SetElementText: txtLanId" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;link text&quot;,&quot;value&quot;:&quot;EASY - Login - Tech Mahindra&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;link text&quot;,&quot;value&quot;:&quot;EASY - Login - Tech Mahindra&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="SetElementText: txtLanId" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAC85F8CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="SetElementText: txtPassword" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;text&quot;:&quot;DS00432238&quot;,&quot;type&quot;:&quot;setElementText&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;txtLanId&quot;}}]</json>
<params>
<Parameter>
<key>SetValue</key>
<value>values={text=DS00432238},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;txtLanId&quot;},value=DS00432238</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="SetElementText: txtPassword" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AACD41BCF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement: btnlogin" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;text&quot;:&quot;nov.2017&quot;,&quot;type&quot;:&quot;setElementText&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;txtPassword&quot;}}]</json>
<params>
<Parameter>
<key>SetValue</key>
<value>values={text=nov.2017},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;txtPassword&quot;},value=nov.2017</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement: btnlogin" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AACFB2ECF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="SetElementText: txtSearch" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;btnlogin&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;btnlogin&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="SetElementText: txtSearch" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AACFB31CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;text&quot;:&quot;Meenakshi N&quot;,&quot;type&quot;:&quot;setElementText&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;txtSearch&quot;}}]</json>
<params>
<Parameter>
<key>SetValue</key>
<value>values={text=Meenakshi N},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;txtSearch&quot;},value=Meenakshi N</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAD2244CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement: PACE" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;xpath&quot;,&quot;value&quot;:&quot;//ul[@id=&apos;userlist&apos;]/li[7]&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;xpath&quot;,&quot;value&quot;:&quot;//ul[@id=&apos;userlist&apos;]/li[7]&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement: PACE" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAD4957CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement: PACEHRLink" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;link text&quot;,&quot;value&quot;:&quot;PACE&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;link text&quot;,&quot;value&quot;:&quot;PACE&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement: PACEHRLink" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAD706ACF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement: TimesheetEntrylinkNew" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;PACEHRLink&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;PACEHRLink&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement: TimesheetEntrylinkNew" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAD706DCF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="ClickElement: lnkLogout1" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;TimesheetEntrylinkNew&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;TimesheetEntrylinkNew&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="ClickElement: lnkLogout1" log=""
          type="com.itko.lisa.glass.SeleniumStep" 
          version="1" 
          uid="7AAD9780CF6611E79757D8CB8A8AB1DA" 
          think="500-1s" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<onStepFail>fail</onStepFail>
<alertAction>1</alertAction>
<alertInput></alertInput>
<json>[{&quot;negated&quot;:false,&quot;type&quot;:&quot;clickElement&quot;,&quot;locator&quot;:{&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;lnkLogout1&quot;}}]</json>
<params>
<Parameter>
<key>ClickElement</key>
<value>values={},locator={&quot;type&quot;:&quot;id&quot;,&quot;value&quot;:&quot;lnkLogout1&quot;}</value>
</Parameter>
</params>
<screens>
</screens>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="4FFDB421CF6611E79757D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="4FFDB41FCF6611E79757D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="4FFDB41DCF6611E79757D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
