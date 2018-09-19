<?xml version="1.0" ?>

<TestCase name="Example_JSON_Scripting" version="5">

<meta>
   <create version="10.1.0" buildNumber="10.1.0.283" author="admin" date="08/31/2017" host="NESJO02" />
   <lastEdited version="10.1.0" buildNumber="10.1.0.283" author="admin" date="08/31/2017" host="NESJO02" />
</meta>

<id>BBF0F2D98E7411E798E14A7F20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMS4wICgxMC4xLjAuMjgzKSZub2Rlcz0tNjg1MjgyODI=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="Parse JSON with Eligible Status" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="BFEADC648E7411E798E14A7F20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Output Log Message" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse JSON with Eligible Status.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].deviceEligiblity.deviceStatus</jsonPath>
      <valueProp>deviceStatus</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert- deviceStatus is Eligible" type="com.itko.lisa.test.AssertByScript">
<log></log>
<then>fail</then>
        <script>_logger.info(&quot;&lt;&lt;&lt; Entering scripted assertion&quot;);&#13;&#10;_logger.info(&quot;&lt;&lt;&lt; Value of the property deviceStatus is: {}&quot;, testExec.getStateValue(&quot;deviceStatus&quot;) );&#13;&#10;_logger.info(&quot;&lt;&lt;&lt; Entering IF / ELSE comparisons&quot;);&#13;&#10;&#13;&#10;if ( &quot;Eligible&quot;.equals( testExec.getStateValue(&quot;deviceStatus&quot;) ) ) {&#13;&#10;    _logger.info(&quot; &lt;&lt;&lt; status check for Eligible met. returning true &quot;);&#13;&#10;    return true;&#13;&#10;} else if ( &quot;InEligible&quot;.equals( testExec.getStateValue(&quot;deviceStatus&quot;) ) ) { &#13;&#10;    _logger.info(&quot; &lt;&lt;&lt; status check for InEligible met. return false &quot;);&#13;&#10;    return false;&#13;&#10;}&#13;&#10;&#13;&#10;_logger.info(&quot; &lt;&lt;&lt; status check was NEITHER Eligible nor InEligible so returning false&quot;);&#13;&#10;return false;&#13;&#10;&#13;&#10;</script>
        <language>BeanShell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<text>eyJNU0lTRE4iOiI0NzA0MjQwMTg4IiwiZGV2aWNlRGV0YWlsTGlzdCI6eyJkZXZpY2UiOlt7ImltZWkiOiIzNTM3NTMwNzQ3MjQ0OTAiLCJwcm9kdWN0TmFtZSI6Ik1vdG9yb2xhIC0gVjMgMDUgRGFyayBQZWFybCBHcmF5IiwicHJvZHVjdFNLVSI6IlhTQU1HOTI4VEIzMiIsIm1hbnVmYWN0dXJlciI6Ik1vdG9yb2xhIiwibW9kZWwiOiJWMyAwNSBEYXJrIFBlYXJsIEdyYXkiLCJmaXJzdFVzZURhdGUiOiIyMDE3LTA4LTI2VDIyOjQ5OjQ5LTA3OjAwIiwibGFzdFVzZURhdGUiOiIyMDE3LTA4LTI5VDIyOjQ5OjQ5LTA3OjAwIiwiZGV2aWNlVHlwZSI6IlQtTW9iaWxlIC0gTmV3IiwiZGV2aWNlUmVwYWlyTG9jYXRpb24iOiIiLCJ3YXJyYW50eUV4cGlyYXRpb25EYXRlIjoiMjAxOC0wOC0yNlQwMDowMDowMC0wNzowMCIsIndhcnJhbnR5VHlwZSI6Ik9FTSIsIlBIUEluZGljYXRvciI6IjAiLCJzYWxlc09mZmljZSI6IiIsImRldmljZUVsaWdpYmxpdHkiOnsiZGV2aWNlU3RhdHVzIjoiRWxpZ2libGUiLCJkZXZpY2VTdGF0dXNNZXNzYWdlIjp7fSwib3Blbk9yZGVyRGV0YWlsIjp7fSwiaW5mb3JtYXRpb25hbE1lc3NhZ2VMaXN0Ijp7ImluZm9ybWF0aW9uYWxNZXNzYWdlcyI6W3sibWVzc2FnZSI6IiIsInVybCI6IiJ9XX0sIm1hbmFnZXJPdmVycmlkZVJlcXVpcmVkIjpmYWxzZX0sImRldmljZUZlZUxpc3QiOnsiZmVlIjpbeyJTS1VUeXBlIjoiUmVzdG9ja2luZ0ZlZSIsIlNLVSI6IlJTS0ZFRSIsIlNLVUdyb3VwIjoiUlNLRkUiLCJmZWUiOjY0OS45OX0seyJTS1VUeXBlIjoiT09XRmVlIiwiU0tVIjoiT09XRkVFIiwiU0tVR3JvdXAiOiJUTEFDQyIsImZlZSI6MjAwLjB9XX0sIklzQVdSRUVsaWdpYmxlIjp0cnVlfV19LCJQSFBWZW5kb3IiOiJPRU0ifQ==</text>
<propKey>fl_JSON_Payload</propKey>
    </Node>


    <Node name="Output Log Message" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="15B15E618E7611E798E14A7F20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Parse JSON with InEligible Status" > 

<log>The previous step returned true.  Value of deviceStatus is: {{deviceStatus}}</log>
    </Node>


    <Node name="Parse JSON with InEligible Status" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="53CCE0168E7611E798E14A7F20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Output Log If Eligible" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse JSON with InEligible Status.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].deviceEligiblity.deviceStatus</jsonPath>
      <valueProp>deviceStatus</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert- deviceStatus is Eligible" type="com.itko.lisa.test.AssertByScript">
<log>Assertion name: Assert- deviceStatus is Eligible checks for: false is of type: Assert by Script Execution.</log>
<then>Error Message Step</then>
<valueToAssertKey></valueToAssertKey>
        <script>_logger.info(&quot;&lt;&lt;&lt; Entering scripted assertion&quot;);&#13;&#10;_logger.info(&quot;&lt;&lt;&lt; Value of the property deviceStatus is: {}&quot;, testExec.getStateValue(&quot;deviceStatus&quot;) );&#13;&#10;_logger.info(&quot;&lt;&lt;&lt; Entering IF / ELSE comparisons&quot;);&#13;&#10;&#13;&#10;if ( &quot;Eligible&quot;.equals( testExec.getStateValue(&quot;deviceStatus&quot;) ) ) {&#13;&#10;    _logger.info(&quot; &lt;&lt;&lt; status check for Eligible met. returning true &quot;);&#13;&#10;    return true;&#13;&#10;} else if ( &quot;InEligible&quot;.equals( testExec.getStateValue(&quot;deviceStatus&quot;) ) ) { &#13;&#10;    _logger.info(&quot; &lt;&lt;&lt; status check for InEligible met. return false &quot;);&#13;&#10;    return false;&#13;&#10;}&#13;&#10;&#13;&#10;_logger.info(&quot; &lt;&lt;&lt; status check was NEITHER Eligible nor InEligible so returning false&quot;);&#13;&#10;return false;&#13;&#10;&#13;&#10;</script>
        <language>BeanShell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<text>eyJNU0lTRE4iOiI0NzA0MjQwMTg4IiwiZGV2aWNlRGV0YWlsTGlzdCI6eyJkZXZpY2UiOlt7ImltZWkiOiIzNTM3NTMwNzQ3MjQ0OTAiLCJwcm9kdWN0TmFtZSI6Ik1vdG9yb2xhIC0gVjMgMDUgRGFyayBQZWFybCBHcmF5IiwicHJvZHVjdFNLVSI6IlhTQU1HOTI4VEIzMiIsIm1hbnVmYWN0dXJlciI6Ik1vdG9yb2xhIiwibW9kZWwiOiJWMyAwNSBEYXJrIFBlYXJsIEdyYXkiLCJmaXJzdFVzZURhdGUiOiIyMDE3LTA4LTI2VDIyOjQ5OjQ5LTA3OjAwIiwibGFzdFVzZURhdGUiOiIyMDE3LTA4LTI5VDIyOjQ5OjQ5LTA3OjAwIiwiZGV2aWNlVHlwZSI6IlQtTW9iaWxlIC0gTmV3IiwiZGV2aWNlUmVwYWlyTG9jYXRpb24iOiIiLCJ3YXJyYW50eUV4cGlyYXRpb25EYXRlIjoiMjAxOC0wOC0yNlQwMDowMDowMC0wNzowMCIsIndhcnJhbnR5VHlwZSI6Ik9FTSIsIlBIUEluZGljYXRvciI6IjAiLCJzYWxlc09mZmljZSI6IiIsImRldmljZUVsaWdpYmxpdHkiOnsiZGV2aWNlU3RhdHVzIjoiSW5FbGlnaWJsZSIsImRldmljZVN0YXR1c01lc3NhZ2UiOnt9LCJvcGVuT3JkZXJEZXRhaWwiOnt9LCJpbmZvcm1hdGlvbmFsTWVzc2FnZUxpc3QiOnsiaW5mb3JtYXRpb25hbE1lc3NhZ2VzIjpbeyJtZXNzYWdlIjoiIiwidXJsIjoiIn1dfSwibWFuYWdlck92ZXJyaWRlUmVxdWlyZWQiOmZhbHNlfSwiZGV2aWNlRmVlTGlzdCI6eyJmZWUiOlt7IlNLVVR5cGUiOiJSZXN0b2NraW5nRmVlIiwiU0tVIjoiUlNLRkVFIiwiU0tVR3JvdXAiOiJSU0tGRSIsImZlZSI6NjQ5Ljk5fSx7IlNLVVR5cGUiOiJPT1dGZWUiLCJTS1UiOiJPT1dGRUUiLCJTS1VHcm91cCI6IlRMQUNDIiwiZmVlIjoyMDAuMH1dfSwiSXNBV1JFRWxpZ2libGUiOnRydWV9XX0sIlBIUFZlbmRvciI6Ik9FTSJ9</text>
<propKey>fl_JSON_Payload</propKey>
    </Node>


    <Node name="Output Log If Eligible" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="9720E5438E7611E798E14A7F20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="Parse JSON with UNKNOWN Status" > 

<log>The previous step returned true.  Value of deviceStatus is: {{deviceStatus}}</log>
    </Node>


    <Node name="Parse JSON with UNKNOWN Status" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="B05FE8BB8E7611E798E14A7F20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="end" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Parse JSON with UNKNOWN Status.rsp</valueToFilterKey>
      <jsonPath>$.deviceDetailList.device[0].deviceEligiblity.deviceStatus</jsonPath>
      <valueProp>deviceStatus</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert- deviceStatus is Eligible" type="com.itko.lisa.test.AssertByScript">
<log>Assertion name: Assert- deviceStatus is Eligible checks for: false is of type: Assert by Script Execution.</log>
<then>Error Message Step</then>
<valueToAssertKey></valueToAssertKey>
        <script>_logger.info(&quot;&lt;&lt;&lt; Entering scripted assertion&quot;);&#13;&#10;_logger.info(&quot;&lt;&lt;&lt; Value of the property deviceStatus is: {}&quot;, testExec.getStateValue(&quot;deviceStatus&quot;) );&#13;&#10;_logger.info(&quot;&lt;&lt;&lt; Entering IF / ELSE comparisons&quot;);&#13;&#10;&#13;&#10;if ( &quot;Eligible&quot;.equals( testExec.getStateValue(&quot;deviceStatus&quot;) ) ) {&#13;&#10;    _logger.info(&quot; &lt;&lt;&lt; status check for Eligible met. returning true &quot;);&#13;&#10;    return true;&#13;&#10;} else if ( &quot;InEligible&quot;.equals( testExec.getStateValue(&quot;deviceStatus&quot;) ) ) { &#13;&#10;    _logger.info(&quot; &lt;&lt;&lt; status check for InEligible met. return false &quot;);&#13;&#10;    return false;&#13;&#10;}&#13;&#10;&#13;&#10;_logger.info(&quot; &lt;&lt;&lt; status check was NEITHER Eligible nor InEligible so returning false&quot;);&#13;&#10;return false;&#13;&#10;&#13;&#10;</script>
        <language>BeanShell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<text>eyJNU0lTRE4iOiI0NzA0MjQwMTg4IiwiZGV2aWNlRGV0YWlsTGlzdCI6eyJkZXZpY2UiOlt7ImltZWkiOiIzNTM3NTMwNzQ3MjQ0OTAiLCJwcm9kdWN0TmFtZSI6Ik1vdG9yb2xhIC0gVjMgMDUgRGFyayBQZWFybCBHcmF5IiwicHJvZHVjdFNLVSI6IlhTQU1HOTI4VEIzMiIsIm1hbnVmYWN0dXJlciI6Ik1vdG9yb2xhIiwibW9kZWwiOiJWMyAwNSBEYXJrIFBlYXJsIEdyYXkiLCJmaXJzdFVzZURhdGUiOiIyMDE3LTA4LTI2VDIyOjQ5OjQ5LTA3OjAwIiwibGFzdFVzZURhdGUiOiIyMDE3LTA4LTI5VDIyOjQ5OjQ5LTA3OjAwIiwiZGV2aWNlVHlwZSI6IlQtTW9iaWxlIC0gTmV3IiwiZGV2aWNlUmVwYWlyTG9jYXRpb24iOiIiLCJ3YXJyYW50eUV4cGlyYXRpb25EYXRlIjoiMjAxOC0wOC0yNlQwMDowMDowMC0wNzowMCIsIndhcnJhbnR5VHlwZSI6Ik9FTSIsIlBIUEluZGljYXRvciI6IjAiLCJzYWxlc09mZmljZSI6IiIsImRldmljZUVsaWdpYmxpdHkiOnsiZGV2aWNlU3RhdHVzIjoiVU5LTk9XTiIsImRldmljZVN0YXR1c01lc3NhZ2UiOnt9LCJvcGVuT3JkZXJEZXRhaWwiOnt9LCJpbmZvcm1hdGlvbmFsTWVzc2FnZUxpc3QiOnsiaW5mb3JtYXRpb25hbE1lc3NhZ2VzIjpbeyJtZXNzYWdlIjoiIiwidXJsIjoiIn1dfSwibWFuYWdlck92ZXJyaWRlUmVxdWlyZWQiOmZhbHNlfSwiZGV2aWNlRmVlTGlzdCI6eyJmZWUiOlt7IlNLVVR5cGUiOiJSZXN0b2NraW5nRmVlIiwiU0tVIjoiUlNLRkVFIiwiU0tVR3JvdXAiOiJSU0tGRSIsImZlZSI6NjQ5Ljk5fSx7IlNLVVR5cGUiOiJPT1dGZWUiLCJTS1UiOiJPT1dGRUUiLCJTS1VHcm91cCI6IlRMQUNDIiwiZmVlIjoyMDAuMH1dfSwiSXNBV1JFRWxpZ2libGUiOnRydWV9XX0sIlBIUFZlbmRvciI6Ik9FTSJ9</text>
<propKey>fl_JSON_Payload</propKey>
    </Node>


    <Node name="Error Message Step" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="C49DCBCA8E7611E798E14A7F20524153" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

<log>Some Sort of Error Occurred because the Assertion branches here if false&#13;&#10;&#13;&#10;The value of deviceStatus is: {{deviceStatus}}</log>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="BBF0F2DF8E7411E798E14A7F20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="BBF0F2DD8E7411E798E14A7F20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="BBF0F2DB8E7411E798E14A7F20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
