<?xml version="1.0" ?>

<TestCase name="ss" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/22/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/29/2017" host="LP-R9WHCBM" />
</meta>

<id>27732194871C11E7AD1F2E3720524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz04ODMxNDgzODQ=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Output Log Message" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="4D82A134871C11E7AD1F2E3720524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Output Log Message" > 

<log>&lt;trackingNumber&gt;1Z3V891F02264{{=import java.util.Random; new Random().nextInt(100000)}}</log>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="27732196871C11E7AD1F2E3720524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="27732198871C11E7AD1F2E3720524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="2773219A871C11E7AD1F2E3720524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
