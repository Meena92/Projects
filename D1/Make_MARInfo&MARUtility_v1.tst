<?xml version="1.0" ?>

<TestCase name="Make_MARInfo&amp;MARUtility" version="5">

<meta>
   <create version="7.5.1" buildNumber="7.5.1.418" author="T020124A" date="01/12/2015" host="DVTBLISAPP002" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="09/28/2017" host="inbasdpc10722" />
</meta>

<id>1989DAD6981411E4A3378E70F5A2C2FB</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC4wLjAgKDEwLjAuMC40MzEpJm5vZGVzPS02MTY0NjYyMDI=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Create_MARInfo_File" log=""
          type="com.itko.lisa.test.UserScriptNode" 
          version="1" 
          uid="BB66B98F0E8C11E59A333C5920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Create_MAR_File" > 

<Documentation>This step reads VSM files from /Vservices/*.vsm folder and create MARInfo file accordingly. The filter {{fileName}} is there to retrieve same file name as of MARInfo file so that corresponding MAR can be created with same name.</Documentation>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.Create_MARInfo_File.rsp</valueToFilterKey>
      <prop>fileName</prop>
      </Filter>


      <!-- Data Sets -->
<readrec>marInfoProps</readrec>
<readrec>dsFileName</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<language>BeanShell</language>
<copyProps>TestExecProps</copyProps>
<script>import com.itko.lisa.model.mar.*;&#13;&#10;import com.itko.lisa.model.mar.ModelArchiveInfo;&#13;&#10;import com.itko.lisa.test.Configuration;&#13;&#10;//This variable will automatically pick up path of current project.&#13;&#10;String projectPath = testExec.getStateValue(&quot;PROJECT_PATH&quot;);&#13;&#10;//Get active config file to be included in MARInfo&#13;&#10;Configuration cnf=testExec.getTestCase().getRealTimeConfig();&#13;&#10;String configName=cnf.getName();&#13;&#10;String fileNameWithVSM=&quot;&quot;;&#13;&#10;String fileNameWithoutVSM=&quot;&quot;;&#13;&#10;String configFileName=&quot;&quot;;&#13;&#10;String [] delimittedString = dsFileName.split(&quot;/&quot;);&#13;&#10;if(delimittedString != null){&#13;&#10;    fileNameWithVSM = delimittedString[delimittedString.length-1];&#13;&#10;    fileNameWithoutVSM = fileNameWithVSM.subSequence(0, fileNameWithVSM.length() - 4); //get rid of .vsm&#13;&#10;}&#13;&#10;String [] delimittedString2 = configName.split(&quot;\\\\&quot;);&#13;&#10;if(delimittedString2 != null){&#13;&#10;    configFileName = delimittedString2[delimittedString2.length-1];&#13;&#10;}&#13;&#10;//System.out.println(&quot;CONFIG_NAME=&quot;+configFileName);&#13;&#10;int capacity = Integer.parseInt(testExec.getStateValue(&quot;CONCURRENT_CAPACITY&quot;));&#13;&#10;int thinkScale = Integer.parseInt(testExec.getStateValue(&quot;THINK_TIME_SCALE&quot;));&#13;&#10;boolean autoRestart = Boolean.parseBoolean(testExec.getStateValue(&quot;AUTO_RESTART&quot;));&#13;&#10;boolean startSeviceOnDeployment = Boolean.parseBoolean(testExec.getStateValue(&quot;START_VS_ON_DEPLOYMENT&quot;));&#13;&#10;String groupTag =  testExec.getStateValue(&quot;GROUP_TAG&quot;);&#13;&#10;ModelArchiveInfo mari = ModelArchiveInfo.createVSMARInfo(dsFileName, projectPath+&quot;/Configs/&quot;+configFileName, &#13;&#10;    capacity, thinkScale,autoRestart, startSeviceOnDeployment,groupTag);&#13;&#10;mari.save(new File(projectPath + &quot;/MARInfos/&quot;+fileNameWithoutVSM+&quot;.mari&quot;));&#13;&#10;return fileNameWithoutVSM;&#13;&#10;//code end</script>
    </Node>


    <Node name="Create_MAR_File" log="Following MAR file has been created: {{LISA_PROJ_ROOT}}/MAR/{{fileName}}.mar"
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="4D674C28982311E4A3378E70F5A2C2FB" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Create_MARInfo_File" > 

<Documentation>This step creates MAR file based on the MARInfo file createed in previous step onta a specific location within project &#10;i-e.{{PROJECT_PATH}}/MAR/{{fileName}}</Documentation>
<cmd>MakeMar --create --marinfo={{PROJECT_PATH}}/MARInfos/{{fileName}}.mari --archive={{PROJECT_PATH}}/MAR/{{fileName}}.mar</cmd>
<basedir>{{LISA_HOME}}/bin</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>60</timeOut>
<killAtEnd>false</killAtEnd>
<wait>false</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>true</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="1989DADC981411E4A3378E70F5A2C2FB" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="1989DADA981411E4A3378E70F5A2C2FB" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="1989DAD8981411E4A3378E70F5A2C2FB" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="marInfoProps" atend="" local="false" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAWU1RBUlRfVlNfT05fREVQTE9ZTUVOVHQABHRydWV0ABNDT05DVVJSRU5UX0NBUEFDSVRZdAABMXQAE21hckluZm9Qcm9wc19Sb3dOdW10AAExdAAMQVVUT19SRVNUQVJUdAAEdHJ1ZXQAEFRISU5LX1RJTUVfU0NBTEV0AAMxMDB0AAlHUk9VUF9UQUd0AAB4</sample>
<table>
<col>CONCURRENT_CAPACITY</col>
<col>THINK_TIME_SCALE</col>
<col>AUTO_RESTART</col>
<col>START_VS_ON_DEPLOYMENT</col>
<col>GROUP_TAG</col>
<tr>
<td>1</td>
<td>100</td>
<td>true</td>
<td>true</td>
<td></td>
</tr>
</table>
    </DataSet>

    <DataSet type="com.itko.lisa.test.DirectoryFilesDataSet" name="dsFileName" atend="end" local="true" random="false" maxItemsToFetch="0" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAAKZHNGaWxlTmFtZXQAUEU6L0NBL1Byb2plY3RzL0FwZXJpb19UU1lTX1JUTC9WaXJ0dWFsU2VydmljZXMvTW9kZWxzL3RzMi0yMDE1LTA2LTEwXzA4MzBfdjEudnNteA==</sample>
    <file-dirPath>{{PROJECT_PATH}}/VirtualServices/</file-dirPath>
    <filePattern>*.vsm</filePattern>
    <includeSubDirs>true</includeSubDirs>
    </DataSet>

</TestCase>
