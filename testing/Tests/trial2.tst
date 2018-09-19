<?xml version="1.0" ?>

<TestCase name="trial2" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/28/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="03/28/2018" host="inbasdpc10722" />
</meta>

<id>4A8D7982318F11E8AFB4D8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0tMTY1NjM0NzYwNA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="Execute script (JSR-223)" log=""
          type="com.itko.lisa.test.UserScriptNode" 
          version="1" 
          uid="A6B3B759318F11E8AFB4D8CB8A8AB1DA" 
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
<language>BeanShell</language>
<copyProps>TestExecProps</copyProps>
<script>import java.util.concurrent.TimeUnit;&#13;&#10;import java.util.Date;&#13;&#10;import java.io.File;&#13;&#10;import org.openqa.selenium.support.ui.Select;&#13;&#10;import org.openqa.selenium.interactions.Actions;&#13;&#10;import org.openqa.selenium.firefox.FirefoxDriver;&#13;&#10;import org.openqa.selenium.*;&#13;&#10;import org.openqa.selenium.OutputType.*;&#13;&#10;&#13;&#10;/*public class Test1 {&#13;&#10;   -- public static void main(String[] args) throws Exception &#13;&#10;&#9;--{*/&#13;&#10;        FirefoxDriver wd;&#13;&#10;        wd = new FirefoxDriver();&#13;&#10;        wd.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);&#13;&#10;        wd.get(&quot;http://localhost:8080/lisabank/home.do;jsessionid=8A4FFAC23A5CB3D9EB838B463ED5C777&quot;);&#13;&#10;        wd.findElement(By.name(&quot;username&quot;)).click();&#13;&#10;        wd.findElement(By.name(&quot;username&quot;)).clear();&#13;&#10;        wd.findElement(By.name(&quot;username&quot;)).sendKeys(&quot;lisa_simpson&quot;);&#13;&#10;        wd.findElement(By.name(&quot;password&quot;)).click();&#13;&#10;        wd.findElement(By.name(&quot;password&quot;)).clear();&#13;&#10;        wd.findElement(By.name(&quot;password&quot;)).sendKeys(&quot;golisa&quot;);&#13;&#10;        wd.findElement(By.xpath(&quot;//table[@id=&apos;t11&apos;]/tbody/tr[2]/td/table/tbody/tr[6]/td/input&quot;)).click();&#13;&#10;        wd.findElement(By.id(&quot;new_account&quot;)).click();&#13;&#10;        wd.findElement(By.name(&quot;name&quot;)).click();&#13;&#10;        wd.findElement(By.name(&quot;name&quot;)).clear();&#13;&#10;        wd.findElement(By.name(&quot;name&quot;)).sendKeys(&quot;Chck&quot;);&#13;&#10;        wd.findElement(By.name(&quot;balance&quot;)).click();&#13;&#10;        wd.findElement(By.name(&quot;balance&quot;)).clear();&#13;&#10;        wd.findElement(By.name(&quot;balance&quot;)).sendKeys(&quot;5000&quot;);&#13;&#10;        wd.findElement(By.xpath(&quot;//td[@class=&apos;secondary&apos;]/input&quot;)).click();&#13;&#10;        wd.findElement(By.xpath(&quot;//div[@id=&apos;maincontent&apos;]/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td&quot;)).click();&#13;&#10;        wd.findElement(By.linkText(&quot;Log Out&quot;)).click();&#13;&#10;        //wd.quit();&#13;&#10;   /*}&#13;&#10;    &#13;&#10;    /*public static boolean isAlertPresent(FirefoxDriver wd) {&#13;&#10;        try {&#13;&#10;            wd.switchTo().alert();&#13;&#10;            return true;&#13;&#10;        } catch (NoAlertPresentException e) {&#13;&#10;            return false;&#13;&#10;        }&#13;&#10;    }&#13;&#10;}*/&#13;&#10;&#13;&#10;&#13;&#10;</script>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="4A8D7988318F11E8AFB4D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="4A8D7986318F11E8AFB4D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="4A8D7984318F11E8AFB4D8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
