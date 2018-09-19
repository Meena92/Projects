<?xml version="1.0" ?>

<TestCase name="mar" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="10/09/2017" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="10/10/2017" host="inbasdpc10722" />
</meta>

<id>F21914E0ACD911E7BC8BD8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPS0yMDg0NTUxNjU3</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Java Script Step" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="97A0B59EAD7511E7BC8BD8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import com.itko.lisa.model.mar.*;&#13;&#10;import com.itko.lisa.model.mar.ModelArchiveInfo;&#13;&#10;import com.itko.lisa.test.Configuration;&#13;&#10;              String path = &quot;D:\\DevTest\\Projects\\D1&quot;;&#13;&#10;              String vsModelFileName = &quot;D:\\DevTest\\Projects\\D1\\VirtualServices\\RR9.vsm&quot;; // include path&#13;&#10;              String configurationFileName = &quot;D:\\DevTest\\Projects\\D1\\Configs\\project.config&quot;; // include path&#13;&#10;              int capacity = 1;&#13;&#10;              int thinkScale = 0;&#13;&#10;              boolean autoRestart = true;&#13;&#10;              ModelArchiveInfo mari = ModelArchiveInfo.createVSMARInfo(path + &quot;/Configs/&quot; + configurationFileName,&#13;&#10;                           capacity, thinkScale, autoRestart);&#13;&#10;              mari.save(new File(path + &quot;/MARInfos/RR9.mari&quot;));&#13;&#10;return vsModelFileName;&#13;&#10;&#13;&#10;//code end&#13;&#10;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="F21AC292ACD911E7BC8BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="F21AC294ACD911E7BC8BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="F21AC296ACD911E7BC8BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
