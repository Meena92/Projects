<?xml version="1.0" ?>

<TestCase name="test" version="5">

<meta>
   <create version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/18/2017" host="LP-R9WHCBM" />
   <lastEdited version="8.2.0" buildNumber="8.2.0.244" author="rkrishn8" date="08/20/2017" host="LP-R9WHCBM" />
</meta>

<id>B2373EFD840411E7A820D40F20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj04LjIuMCAoOC4yLjAuMjQ0KSZub2Rlcz0tMTA5NDM2NjUzNQ==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Web Service CreateDraftOrder" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="BC88637C840411E7A820D40F20524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Read file confirmOrder - Copy.txt" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
<prop>orderId123</prop>
<xpathq>/SOAP-ENV:Envelope/SOAP-ENV:Body/ns0:createDraftOrderResponse/ns0:orderId/text()</xpathq>
<nsMap0>ns0=http://esp.t-mobile.com/commercemanagement/order</nsMap0>
<nsMap1>SOAP-ENV=http://schemas.xmlsoap.org/soap/envelope/</nsMap1>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.Web Service CreateDraftOrder.rsp</valueToFilterKey>
      <tag>ns0:orderId</tag>
      <tagn>1</tagn>
      <prop>orderId</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>Assertion name:  checks for: true is of type: Property Value Expression.</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <prop>orderId</prop>
        <param>ns0:orderId</param>
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
<request itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm9yZD0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY29tbWVyY2VtYW5hZ2VtZW50L29yZGVyIiB4bWxuczpjc289Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyIgeG1sbnM6Y29tPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgPHNvYXBlbnY6Qm9keT4NCiAgICA8Y3JlYXRlRHJhZnRPcmRlclJlcXVlc3QgeG1sbnM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NvbW1lcmNlbWFuYWdlbWVudC9vcmRlciI+DQogICAgICA8bnMzOmhlYWRlciB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+DQogICAgICAgIDxuczM6c2VuZGVyPg0KICAgICAgICAgIDxuczM6c2VuZGVySWQ+QUNVSTwvbnMzOnNlbmRlcklkPg0KICAgICAgICAgIDxuczM6Y2hhbm5lbElkPlJFVEFJTDwvbnMzOmNoYW5uZWxJZD4NCiAgICAgICAgICA8bnMzOmFwcGxpY2F0aW9uSWQ+QUNVSTwvbnMzOmFwcGxpY2F0aW9uSWQ+DQogICAgICAgICAgPG5zMzphcHBsaWNhdGlvblVzZXJJZD5TdXBlcnVzcjwvbnMzOmFwcGxpY2F0aW9uVXNlcklkPg0KICAgICAgICAgIDxuczM6c2Vzc2lvbklkPmNmMzZhNTMxZDdkOWJkMmE6LTU3NGE5MDQ3OjE1ZGY1YWFmYzE4Oi0zMmI4PC9uczM6c2Vzc2lvbklkPg0KICAgICAgICAgIDxuczM6c3RvcmVJZD40NTE8L25zMzpzdG9yZUlkPg0KICAgICAgICAgIDxuczM6ZGVhbGVyQ29kZT4wMDAwMDAyPC9uczM6ZGVhbGVyQ29kZT4NCiAgICAgICAgPC9uczM6c2VuZGVyPg0KICAgICAgICA8bnMzOnRhcmdldD4NCiAgICAgICAgICA8bnMzOmN1c3RvbWVyQ29tcGFueUlkPlRNb2JpbGVVUzwvbnMzOmN1c3RvbWVyQ29tcGFueUlkPg0KICAgICAgICA8L25zMzp0YXJnZXQ+DQogICAgICA8L25zMzpoZWFkZXI+DQogICAgICA8b3JkZXI+DQogICAgICAgIDxuczQ6b3JkZXJUeXBlIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+U1RBTkRBUkQ8L25zNDpvcmRlclR5cGU+DQogICAgICAgIDxuczQ6YWNjb3VudEluZm8geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICA8bnM0OmFjY291bnROdW1iZXI+OTU1MDgxMzkxPC9uczQ6YWNjb3VudE51bWJlcj4NCiAgICAgICAgICA8bnM0OnNlcnZpY2VTdGFydERhdGU+MjAxNy0wMS0yMFQwODowMDowMFo8L25zNDpzZXJ2aWNlU3RhcnREYXRlPg0KICAgICAgICAgIDxuczQ6YWNjb3VudFR5cGU+STwvbnM0OmFjY291bnRUeXBlPg0KICAgICAgICAgIDxuczQ6YWNjb3VudFN1YlR5cGU+UjwvbnM0OmFjY291bnRTdWJUeXBlPg0KICAgICAgICAgIDxuczQ6YmlsbGluZ0NvbnRhY3Q+DQogICAgICAgICAgICA8bnMzOnBlcnNvbk5hbWUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPg0KICAgICAgICAgICAgICA8bnMzOmZpcnN0TmFtZT5ETE08L25zMzpmaXJzdE5hbWU+DQogICAgICAgICAgICAgIDxuczM6bGFzdE5hbWU+UkVUQUlMIERBVEEgRE9OT1RVU0U8L25zMzpsYXN0TmFtZT4NCiAgICAgICAgICAgIDwvbnMzOnBlcnNvbk5hbWU+DQogICAgICAgICAgICA8bnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4NCiAgICAgICAgICAgICAgPG5zMzphZGRyZXNzPg0KICAgICAgICAgICAgICAgIDxuczM6YWRkcmVzc0xpbmUxPjEgUkFWSU5JQSBEUiBTVEUgMTAwMDwvbnMzOmFkZHJlc3NMaW5lMT4NCiAgICAgICAgICAgICAgICA8bnMzOmNpdHlOYW1lPkFUTEFOVEE8L25zMzpjaXR5TmFtZT4NCiAgICAgICAgICAgICAgICA8bnMzOnN0YXRlTmFtZT5HQTwvbnMzOnN0YXRlTmFtZT4NCiAgICAgICAgICAgICAgICA8bnMzOmNvdW50cnlOYW1lPlVTQTwvbnMzOmNvdW50cnlOYW1lPg0KICAgICAgICAgICAgICAgIDxuczM6cG9zdGFsQ29kZT4zMDM0NjwvbnMzOnBvc3RhbENvZGU+DQogICAgICAgICAgICAgIDwvbnMzOmFkZHJlc3M+DQogICAgICAgICAgICA8L25zMzphZGRyZXNzQ29tbXVuaWNhdGlvbj4NCiAgICAgICAgICA8L25zNDpiaWxsaW5nQ29udGFjdD4NCiAgICAgICAgPC9uczQ6YWNjb3VudEluZm8+DQogICAgICAgIDxuczQ6cGF5bWVudCB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPg0KICAgICAgICAgIDxuczQ6cGF5bWVudFR5cGU+RFBZPC9uczQ6cGF5bWVudFR5cGU+DQogICAgICAgIDwvbnM0OnBheW1lbnQ+DQogICAgICAgIDxuczQ6bm90aWZpY2F0aW9uIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+DQogICAgICAgICAgPG5zNDpub3RpZmljYXRpb25QcmVmZXJlbmNlPlM8L25zNDpub3RpZmljYXRpb25QcmVmZXJlbmNlPg0KICAgICAgICAgIDxuczQ6TVNJU0ROPjQwNDIwMDEwNjc8L25zNDpNU0lTRE4+DQogICAgICAgIDwvbnM0Om5vdGlmaWNhdGlvbj4NCiAgICAgICAgPG5zNDpoZWFkZXJDaGFyZ2UgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICA8bnM0OmFtb3VudD42Ljk5PC9uczQ6YW1vdW50Pg0KICAgICAgICAgIDxuczQ6bmFtZT5TaGlwcGluZzwvbnM0Om5hbWU+DQogICAgICAgICAgPG5zNDpjYXRlZ29yeT5TaGlwcGluZzwvbnM0OmNhdGVnb3J5Pg0KICAgICAgICAgIDxuczQ6cmVmZXJlbmNlPlNISVBQPC9uczQ6cmVmZXJlbmNlPg0KICAgICAgICAgIDxuczQ6U09DPlNISVBGRUU8L25zNDpTT0M+DQogICAgICAgIDwvbnM0OmhlYWRlckNoYXJnZT4NCiAgICAgICAgPG5zNDpvcmRlckxpbmUgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICA8bnM0OmlkLz4NCiAgICAgICAgICA8bnM0OmZ1bGZpbGxtZW50TGluZUlkPjE8L25zNDpmdWxmaWxsbWVudExpbmVJZD4NCiAgICAgICAgICA8bnM0OmRlbGl2ZXJ5TWV0aG9kPlNIUDwvbnM0OmRlbGl2ZXJ5TWV0aG9kPg0KICAgICAgICAgIDxuczQ6ZGVzY3JpcHRpb24+R2FsYXh5IFM3IGVkZ2UgLSBTaWx2ZXIgVGl0YW5pdW0gLSAzMkdCPC9uczQ6ZGVzY3JpcHRpb24+DQogICAgICAgICAgPG5zNDpzaG9ydERlc2NyaXB0aW9uPjYxMDIxNDY5NjQ4OTwvbnM0OnNob3J0RGVzY3JpcHRpb24+DQogICAgICAgICAgPG5zNDpraXRDb2RlPlJlcGxhY2VtZW50U0tVPC9uczQ6a2l0Q29kZT4NCiAgICAgICAgICA8bnM0Om1hcmtldENvZGU+QVRHPC9uczQ6bWFya2V0Q29kZT4NCiAgICAgICAgICA8bnM0OnF1YW50aXR5PjE8L25zNDpxdWFudGl0eT4NCiAgICAgICAgICA8bnM0OnVuaXRPZk1lYXN1cmU+RUE8L25zNDp1bml0T2ZNZWFzdXJlPg0KICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgPG5zNDphbW91bnQ+MzQuNTU8L25zNDphbW91bnQ+DQogICAgICAgICAgICA8bnM0Om5hbWU+UmVzdG9ja2luZ0ZlZTwvbnM0Om5hbWU+DQogICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT5SU0tGRTwvbnM0OnJlZmVyZW5jZT4NCiAgICAgICAgICAgIDxuczQ6U09DPlJTS0ZFRTwvbnM0OlNPQz4NCiAgICAgICAgICA8L25zNDpjaGFyZ2U+DQogICAgICAgICAgPG5zNDpjaGFyZ2U+DQogICAgICAgICAgICA8bnM0OmFtb3VudD4yNS41NTwvbnM0OmFtb3VudD4NCiAgICAgICAgICAgIDxuczQ6bmFtZT5PT1dGZWU8L25zNDpuYW1lPg0KICAgICAgICAgICAgPG5zNDpjYXRlZ29yeT5JbmZvT25seTwvbnM0OmNhdGVnb3J5Pg0KICAgICAgICAgICAgPG5zNDpyZWZlcmVuY2U+VExBQ0M8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgICA8bnM0OlNPQz5PT1dGRUU8L25zNDpTT0M+DQogICAgICAgICAgPC9uczQ6Y2hhcmdlPg0KICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgPG5zNDphbW91bnQ+MDwvbnM0OmFtb3VudD4NCiAgICAgICAgICAgIDxuczQ6bmFtZT5SZXRhaWxQcmljZTwvbnM0Om5hbWU+DQogICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgPC9uczQ6Y2hhcmdlPg0KICAgICAgICAgIDxuczQ6Y2hhcmdlPg0KICAgICAgICAgICAgPG5zNDphbW91bnQ+MDwvbnM0OmFtb3VudD4NCiAgICAgICAgICAgIDxuczQ6bmFtZT5SZXBsYWNlbWVudFNLVTwvbnM0Om5hbWU+DQogICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT55ZXM8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgPC9uczQ6Y2hhcmdlPg0KICAgICAgICAgIDxuczQ6c2t1PjYxMDIxNDY5NjQ4OTwvbnM0OnNrdT4NCiAgICAgICAgICA8bnM0OnN1YnNjcmliZXJJbmZvPg0KICAgICAgICAgICAgPG5zNDpNU0lTRE4+NDA0MjAwMTE0MTwvbnM0Ok1TSVNETj4NCiAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgPC9uczQ6b3JkZXJMaW5lPg0KICAgICAgICA8bnM0Om9yZGVyTGluZSB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPg0KICAgICAgICAgIDxuczQ6aWQvPg0KICAgICAgICAgIDxuczQ6ZnVsZmlsbG1lbnRMaW5lSWQ+MjwvbnM0OmZ1bGZpbGxtZW50TGluZUlkPg0KICAgICAgICAgIDxuczQ6ZGVsaXZlcnlNZXRob2Q+U0hQPC9uczQ6ZGVsaXZlcnlNZXRob2Q+DQogICAgICAgICAgPG5zNDpkZXNjcmlwdGlvbj5TYW1zdW5nIC0gR2FsYXh5IE5vdGUgMzwvbnM0OmRlc2NyaXB0aW9uPg0KICAgICAgICAgIDxuczQ6c2hvcnREZXNjcmlwdGlvbj42MTAyMTQ2NDI0MDA8L25zNDpzaG9ydERlc2NyaXB0aW9uPg0KICAgICAgICAgIDxuczQ6a2l0Q29kZT5EZWZlY3RpdmVTS1U8L25zNDpraXRDb2RlPg0KICAgICAgICAgIDxuczQ6cXVhbnRpdHk+MTwvbnM0OnF1YW50aXR5Pg0KICAgICAgICAgIDxuczQ6dW5pdE9mTWVhc3VyZT5FQTwvbnM0OnVuaXRPZk1lYXN1cmU+DQogICAgICAgICAgPG5zNDpjaGFyZ2U+DQogICAgICAgICAgICA8bnM0OmFtb3VudD4wPC9uczQ6YW1vdW50Pg0KICAgICAgICAgICAgPG5zNDpuYW1lPkRlZmVjdGl2ZVNLVTwvbnM0Om5hbWU+DQogICAgICAgICAgICA8bnM0OmNhdGVnb3J5PkluZm9Pbmx5PC9uczQ6Y2F0ZWdvcnk+DQogICAgICAgICAgICA8bnM0OnJlZmVyZW5jZT55ZXM8L25zNDpyZWZlcmVuY2U+DQogICAgICAgICAgPC9uczQ6Y2hhcmdlPg0KICAgICAgICAgIDxuczQ6c2t1PjYxMDIxNDY0MjQwMDwvbnM0OnNrdT4NCiAgICAgICAgICA8bnM0OnN1YnNjcmliZXJJbmZvPg0KICAgICAgICAgICAgPG5zNDpNU0lTRE4+NDA0MjAwMTE0MTwvbnM0Ok1TSVNETj4NCiAgICAgICAgICAgIDxuczQ6c2VyaWFsTnVtYmVyPjM1Mzc1NjA3Mjc0MjM4MDwvbnM0OnNlcmlhbE51bWJlcj4NCiAgICAgICAgICAgIDxuczQ6UEhQSW5kaWNhdG9yPjA8L25zNDpQSFBJbmRpY2F0b3I+DQogICAgICAgICAgICA8bnM0OlNBUFdhcnJhbnR5VHlwZT5SPC9uczQ6U0FQV2FycmFudHlUeXBlPg0KICAgICAgICAgICAgPG5zNDp3YXJyYW50eVR5cGU+UjwvbnM0OndhcnJhbnR5VHlwZT4NCiAgICAgICAgICA8L25zNDpzdWJzY3JpYmVySW5mbz4NCiAgICAgICAgICA8bnM0OmRldmljZUl0ZW0+DQogICAgICAgICAgICA8bnMzOmJhc2ljSW5mbyB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+DQogICAgICAgICAgICAgIDxuczM6bWFudWZhY3R1cmVyPlNhbXN1bmc8L25zMzptYW51ZmFjdHVyZXI+DQogICAgICAgICAgICA8L25zMzpiYXNpY0luZm8+DQogICAgICAgICAgICA8bnMzOmZpcnN0VXNlRGF0ZSB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+MjAxNy0wNy0yM1QyMToyNTo1Mlo8L25zMzpmaXJzdFVzZURhdGU+DQogICAgICAgICAgICA8bnMzOmxhc3RVc2VEYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE3LTA3LTI2VDIxOjI1OjUyWjwvbnMzOmxhc3RVc2VEYXRlPg0KICAgICAgICAgICAgPG5zMzp3YXJyYW50eUV4cGlyYXRpb25EYXRlIHhtbG5zOm5zMz0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvIj4yMDE4LTA3LTIzVDA3OjAwOjAwWjwvbnMzOndhcnJhbnR5RXhwaXJhdGlvbkRhdGU+DQogICAgICAgICAgICA8bnMzOnR5cGUgeG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPlQtTW9iaWxlIC0gTmV3PC9uczM6dHlwZT4NCiAgICAgICAgICA8L25zNDpkZXZpY2VJdGVtPg0KICAgICAgICAgIDxuczQ6aXNBZGREZXZpY2U+ZmFsc2U8L25zNDppc0FkZERldmljZT4NCiAgICAgICAgICA8bnM0Omluc3VyYW5jZVJlcGxhY2VtZW50SW5kaWNhdG9yLz4NCiAgICAgICAgPC9uczQ6b3JkZXJMaW5lPg0KICAgICAgICA8bnM0OnNoaXBwaW5nSW5mbyB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPg0KICAgICAgICAgIDxuczQ6c2hpcHBpbmdNb2RlPg0KICAgICAgICAgICAgPG5zNDpjb2RlPjEwPC9uczQ6Y29kZT4NCiAgICAgICAgICAgIDxuczQ6ZGVzY3JpcHRpb24+VVBTIEdyb3VuZCAtIFVwIHRvIDcgYnVzaW5lc3MgZGF5cyAoJDYuOTkpPC9uczQ6ZGVzY3JpcHRpb24+DQogICAgICAgICAgPC9uczQ6c2hpcHBpbmdNb2RlPg0KICAgICAgICAgIDxuczQ6c2hpcFRvQ29udGFjdD4NCiAgICAgICAgICAgIDxuczM6cGVyc29uTmFtZSB4bWxuczpuczM9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2NzbyI+DQogICAgICAgICAgICAgIDxuczM6Zmlyc3ROYW1lPkRMTTwvbnMzOmZpcnN0TmFtZT4NCiAgICAgICAgICAgICAgPG5zMzpsYXN0TmFtZT5SRVRBSUwgREFUQSBET05PVFVTRTwvbnMzOmxhc3ROYW1lPg0KICAgICAgICAgICAgPC9uczM6cGVyc29uTmFtZT4NCiAgICAgICAgICAgIDxuczM6YWRkcmVzc0NvbW11bmljYXRpb24geG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPg0KICAgICAgICAgICAgICA8bnMzOmFkZHJlc3M+DQogICAgICAgICAgICAgICAgPG5zMzphZGRyZXNzTGluZTE+MSBSQVZJTklBIERSIFNURSAxMDAwPC9uczM6YWRkcmVzc0xpbmUxPg0KICAgICAgICAgICAgICAgIDxuczM6Y2l0eU5hbWU+QVRMQU5UQTwvbnMzOmNpdHlOYW1lPg0KICAgICAgICAgICAgICAgIDxuczM6c3RhdGVOYW1lPkdBPC9uczM6c3RhdGVOYW1lPg0KICAgICAgICAgICAgICAgIDxuczM6Y291bnRyeU5hbWU+VVNBPC9uczM6Y291bnRyeU5hbWU+DQogICAgICAgICAgICAgICAgPG5zMzpwb3N0YWxDb2RlPjMwMzQ2PC9uczM6cG9zdGFsQ29kZT4NCiAgICAgICAgICAgICAgPC9uczM6YWRkcmVzcz4NCiAgICAgICAgICAgIDwvbnMzOmFkZHJlc3NDb21tdW5pY2F0aW9uPg0KICAgICAgICAgICAgPG5zMzplbWFpbENvbW11bmljYXRpb24geG1sbnM6bnMzPSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28iPg0KICAgICAgICAgICAgICA8bnMzOmVtYWlsQWRkcmVzcy8+DQogICAgICAgICAgICA8L25zMzplbWFpbENvbW11bmljYXRpb24+DQogICAgICAgICAgPC9uczQ6c2hpcFRvQ29udGFjdD4NCiAgICAgICAgPC9uczQ6c2hpcHBpbmdJbmZvPg0KICAgICAgICA8bnM0Om5vdGUgeG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij4NCiAgICAgICAgICA8bnM0OnJlYXNvbkNvZGU+QXVkaW8gLyBTcGVha2VyIElzc3VlczwvbnM0OnJlYXNvbkNvZGU+DQogICAgICAgICAgPG5zNDpub3Rlcz53d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3PC9uczQ6bm90ZXM+DQogICAgICAgICAgPG5zNDpjdXN0b21lclNhdEluZGljYXRvcj5BdWRpbyAvIFNwZWFrZXIgSXNzdWVzPC9uczQ6Y3VzdG9tZXJTYXRJbmRpY2F0b3I+DQogICAgICAgIDwvbnM0Om5vdGU+DQogICAgICAgIDxuczQ6dHJhbnNhY3Rpb25UeXBlIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+V0FSUkFOVFlFWENIQU5HRTwvbnM0OnRyYW5zYWN0aW9uVHlwZT4NCiAgICAgICAgPG5zNDppbml0aWF0aW5nU3RvcmVJZCB4bWxuczpuczQ9Imh0dHA6Ly9lc3AudC1tb2JpbGUuY29tL2Nzby9jb21tZXJjZW1hbmFnZW1lbnQiPjQ1MTwvbnM0OmluaXRpYXRpbmdTdG9yZUlkPg0KICAgICAgICA8bnM0Om9yZGVyVHlwZVZlcnNpb24geG1sbnM6bnM0PSJodHRwOi8vZXNwLnQtbW9iaWxlLmNvbS9jc28vY29tbWVyY2VtYW5hZ2VtZW50Ij5BZHZhbmNlZEV4Y2hhbmdlPC9uczQ6b3JkZXJUeXBlVmVyc2lvbj4NCiAgICAgICAgPG5zNDppc1BIUERlY2xpbmVkIHhtbG5zOm5zND0iaHR0cDovL2VzcC50LW1vYmlsZS5jb20vY3NvL2NvbW1lcmNlbWFuYWdlbWVudCI+ZmFsc2U8L25zNDppc1BIUERlY2xpbmVkPg0KICAgICAgPC9vcmRlcj4NCiAgICA8L2NyZWF0ZURyYWZ0T3JkZXJSZXF1ZXN0Pg0KICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</request>
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


    <Node name="Read file confirmOrder - Copy.txt" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="66F21ECB7C2F11E7AB6378D920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Parse Text as Response" > 


      <!-- Data Sets -->
<readrec>Read Data for confirmorder</readrec>
<Loc>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Request/AWRE/confirmOrder - Copy.txt</Loc>
<charset>DEFAULT</charset>
<PropKey>order_req1</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="Parse Text as Response" log=""
          type="com.itko.lisa.utils.ParseTextContentNode" 
          version="1" 
          uid="5AE27FBC840711E7A820D40F20524153" 
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
          next="Output Log Message" > 


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

      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.confirmorder.rsp</valueToFilterKey>
      <prop>confirmorder</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.confirmorder.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Output_RR/AWRE/confirmorderresponse.xml</file>
      <append>false</append>
      </Filter>

<url>https://qattbco522.unix.gsm1900.org:7116/service/rest/v1/CommerceManagement/Order/ConfirmOrder</url>
<content>{{order_req2}}</content>
<content-type>application/json</content-type>
<data-type>text</data-type>
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="Output Log Message" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="8797544856811E7A1C5D0F920524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

<log>{{confirmorder}}</log>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="B2373EFF840411E7A820D40F20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="B2373F01840411E7A820D40F20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="B2373F03840411E7A820D40F20524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Read Data for confirmorder" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAB3CAAAAAEAAAAAeA==</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/Dataset/AWRE/AWRE_TestData.xlsx</location>
    <sheetname>Step8_confirmorder</sheetname>
    </DataSet>

</TestCase>
