<?xml version="1.0" ?>

<TestCase name="wsdl" version="5">

<meta>
   <create version="10.0.0" buildNumber="10.0.0.431" author="admin" date="01/03/2018" host="inbasdpc10722" />
   <lastEdited version="10.0.0" buildNumber="10.0.0.431" author="admin" date="01/03/2018" host="inbasdpc10722" />
</meta>

<id>C3DD84E8F04A11E7923BD8CB8A8AB1DA</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuMC4wICgxMC4wLjAuNDMxKSZub2Rlcz0zODQ2MDU1OTc=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="Web Service" log=""
          type="com.itko.lisa.ws.nx.NxWSStep" 
          version="1" 
          uid="100CFFD1F04B11E7923BD8CB8A8AB1DA" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<wsdl>file:/E:/SV/RRpair/WSDL/aps.wfm.partner.appointment.wsdl</wsdl>
<endpoint>http://localhost:8009/axis/services/KopaWfmSOAP</endpoint>
<targetNamespace>http://www.logobject.ch/ns/KopaWfm/</targetNamespace>
<service>KopaWfm</service>
<port>KopaWfmSOAP</port>
<operation>koPaStateFio</operation>
<onError>abort</onError>
<maintainSession>true</maintainSession>
<clearSession>false</clearSession>
<request itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSI+CiAgPHNvYXBlbnY6Qm9keT4KICAgIDxrb1BhU3RhdGVGaW8geG1sbnM9Imh0dHA6Ly93d3cubG9nb2JqZWN0LmNoL25zL0tvcGFXZm0vIj4KICAgICAgPHRhc2tIZWFkZXI+CiAgICAgICAgPGZpb0lkPnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L2Zpb0lkPgogICAgICAgIDxmaW9Lb1BhSWQ+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvZmlvS29QYUlkPgogICAgICAgIDxrb1BhSWQ+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwva29QYUlkPgogICAgICAgIDx0aW1lc3RhbXA+e3s9Wzp0aW1lc3RhbXA6MjAwMC0wMS0wMVQwMFw6MDBcOjAwXX19PC90aW1lc3RhbXA+CiAgICAgICAgPCEtLXJlcXVlc3RJZCBpcyBvcHRpb25hbC0tPgogICAgICAgIDxyZXF1ZXN0SWQ+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvcmVxdWVzdElkPgogICAgICAgIDxzb3VyY2VBcHBsaWNhdGlvbklkPnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L3NvdXJjZUFwcGxpY2F0aW9uSWQ+CiAgICAgICAgPCEtLWFwcElkIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgPGFwcElkPnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L2FwcElkPgogICAgICAgIDwhLS1hcHBTdGFydERhdGUgaXMgb3B0aW9uYWwtLT4KICAgICAgICA8YXBwU3RhcnREYXRlPnt7PVs6YXBwU3RhcnREYXRlOjIwMDAtMDEtMDFUMDBcOjAwXDowMF19fTwvYXBwU3RhcnREYXRlPgogICAgICAgIDwhLS1hcHBFbmREYXRlIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgPGFwcEVuZERhdGU+e3s9WzphcHBFbmREYXRlOjIwMDAtMDEtMDFUMDBcOjAwXDowMF19fTwvYXBwRW5kRGF0ZT4KICAgICAgICA8IS0taW50ZWdyYXRpb25JZCBpcyBvcHRpb25hbC0tPgogICAgICAgIDxpbnRlZ3JhdGlvbklkPnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L2ludGVncmF0aW9uSWQ+CiAgICAgICAgPCEtLW91dE9mU2xhIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgPG91dE9mU2xhPnt7PVs6b3V0T2ZTbGE6WzEsMF1dfX08L291dE9mU2xhPgogICAgICAgIDwhLS1vdXRPZlNsYVJlYXNvbiBpcyBvcHRpb25hbC0tPgogICAgICAgIDxvdXRPZlNsYVJlYXNvbj57ez1bOm91dE9mU2xhUmVhc29uOjFdfX08L291dE9mU2xhUmVhc29uPgogICAgICAgIDwhLS1jb21tZW50IGlzIG9wdGlvbmFsLS0+CiAgICAgICAgPGNvbW1lbnQ+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvY29tbWVudD4KICAgICAgPC90YXNrSGVhZGVyPgogICAgICA8a29QYVN0YXRlPgogICAgICAgIDx0ZXh0Pnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L3RleHQ+CiAgICAgICAgPGNvZGU+e3s9Wzpjb2RlOjFdfX08L2NvZGU+CiAgICAgICAgPGRhdGU+e3s9WzpkYXRlOjIwMDAtMDEtMDFUMDBcOjAwXDowMF19fTwvZGF0ZT4KICAgICAgPC9rb1BhU3RhdGU+CiAgICAgIDwhLS13b3JrSW5mbyBpcyBvcHRpb25hbC0tPgogICAgICA8d29ya0luZm8+CiAgICAgICAgPGluZm9UZXh0Pnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L2luZm9UZXh0PgogICAgICAgIDxpbmZvQ29kZT57ez1bOmluZm9Db2RlOjFdfX08L2luZm9Db2RlPgogICAgICAgIDxpbmZvQ29tbWVudD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9pbmZvQ29tbWVudD4KICAgICAgPC93b3JrSW5mbz4KICAgICAgPCEtLWlwRGF0YSBpcyBvcHRpb25hbC0tPgogICAgICA8aXBEYXRhPgogICAgICAgIDwhLS1pcENvbXBhbnkgaXMgb3B0aW9uYWwtLT4KICAgICAgICA8aXBDb21wYW55Pnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L2lwQ29tcGFueT4KICAgICAgICA8IS0taXBGaXJzdE5hbWUgaXMgb3B0aW9uYWwtLT4KICAgICAgICA8aXBGaXJzdE5hbWU+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvaXBGaXJzdE5hbWU+CiAgICAgICAgPCEtLWlwTGFzdE5hbWUgaXMgb3B0aW9uYWwtLT4KICAgICAgICA8aXBMYXN0TmFtZT57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9pcExhc3ROYW1lPgogICAgICAgIDwhLS1pcFBob25lIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgPGlwUGhvbmU+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvaXBQaG9uZT4KICAgICAgPC9pcERhdGE+CiAgICAgIDwhLS1yZXBvcnREYXRhIGlzIG9wdGlvbmFsLS0+CiAgICAgIDxyZXBvcnREYXRhPgogICAgICAgIDxvcmRlckNvbXBsZXRpb25Db2RlPnt7PVs6b3JkZXJDb21wbGV0aW9uQ29kZToxXX19PC9vcmRlckNvbXBsZXRpb25Db2RlPgogICAgICAgIDxvcmRlckNvbXBsZXRpb25UZXh0Pnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L29yZGVyQ29tcGxldGlvblRleHQ+CiAgICAgICAgPCEtLWluc3RhbGxhdGlvbkNvbW1lbnQgaXMgb3B0aW9uYWwtLT4KICAgICAgICA8aW5zdGFsbGF0aW9uQ29tbWVudD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9pbnN0YWxsYXRpb25Db21tZW50PgogICAgICAgIDwhLS1pbnZlbnRvcnkgaXMgb3B0aW9uYWwtLT4KICAgICAgICA8aW52ZW50b3J5PgogICAgICAgICAgPG90b0tleT57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9vdG9LZXk+CiAgICAgICAgICA8IS0tb3RvVHlwZSBpcyBvcHRpb25hbC0tPgogICAgICAgICAgPG90b1R5cGU+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvb3RvVHlwZT4KICAgICAgICAgIDwhLS1vdG9Pbmx5IGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8b3RvT25seT57ez1bOm90b09ubHk6WzEsMF1dfX08L290b09ubHk+CiAgICAgICAgICA8IS0tcGFydG5lckxhYmVsIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8cGFydG5lckxhYmVsPnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L3BhcnRuZXJMYWJlbD4KICAgICAgICAgIDwhLS1pbnN0YWxsYXRpb25EYXRlIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8aW5zdGFsbGF0aW9uRGF0ZT57ez1bOmluc3RhbGxhdGlvbkRhdGU6MjAwMC0wMS0wMVQwMFw6MDBcOjAwXX19PC9pbnN0YWxsYXRpb25EYXRlPgogICAgICAgICAgPCEtLWZsYXRJZCBpcyBvcHRpb25hbC0tPgogICAgICAgICAgPGZsYXRJZD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9mbGF0SWQ+CiAgICAgICAgICA8IS0tZmxhdE1lbW8gaXMgb3B0aW9uYWwtLT4KICAgICAgICAgIDxmbGF0TWVtbz57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9mbGF0TWVtbz4KICAgICAgICAgIDwhLS1pbnN0YWxsYXRpb25QYXJ0bmVyIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8aW5zdGFsbGF0aW9uUGFydG5lcj57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9pbnN0YWxsYXRpb25QYXJ0bmVyPgogICAgICAgICAgPCEtLWxlbmd0aEluaG91c2VDYWJsZSBpcyBvcHRpb25hbC0tPgogICAgICAgICAgPGxlbmd0aEluaG91c2VDYWJsZT57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9sZW5ndGhJbmhvdXNlQ2FibGU+CiAgICAgICAgICA8IS0tY29ubmVjdGlvbkJ1aWxkaW5nZW50cnlCZXAgaXMgb3B0aW9uYWwtLT4KICAgICAgICAgIDxjb25uZWN0aW9uQnVpbGRpbmdlbnRyeUJlcD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9jb25uZWN0aW9uQnVpbGRpbmdlbnRyeUJlcD4KICAgICAgICAgIDwhLS10cmF5RXF1aXBtZW50QmVwIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8dHJheUVxdWlwbWVudEJlcD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC90cmF5RXF1aXBtZW50QmVwPgogICAgICAgICAgPCEtLWNvbm5lY3Rpb25CZXBWZXJ0aWNhbFNoYWZ0IGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8Y29ubmVjdGlvbkJlcFZlcnRpY2FsU2hhZnQ+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvY29ubmVjdGlvbkJlcFZlcnRpY2FsU2hhZnQ+CiAgICAgICAgICA8IS0taW5mcmFzdHJ1Y3R1cmVWZXJ0aWNhbFNoYWZ0IGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8aW5mcmFzdHJ1Y3R1cmVWZXJ0aWNhbFNoYWZ0Pnt7PSViZWFuc2hlbGwlIGNvbS5jYS5zdi5kZXZ0ZXN0LnV0aWwuR2VuZXJhdGVTdHJpbmcuZm9yUmVnZXgoIltBLVphLXowLTldezUsMTV9Iik7fX08L2luZnJhc3RydWN0dXJlVmVydGljYWxTaGFmdD4KICAgICAgICAgIDwhLS1qdW1wZXJWZXJ0aWNhbFNoYWZ0IGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8anVtcGVyVmVydGljYWxTaGFmdD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9qdW1wZXJWZXJ0aWNhbFNoYWZ0PgogICAgICAgICAgPCEtLWluZnJhc3RydWN0dXJlRmxhdCBpcyBvcHRpb25hbC0tPgogICAgICAgICAgPGluZnJhc3RydWN0dXJlRmxhdD57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9pbmZyYXN0cnVjdHVyZUZsYXQ+CiAgICAgICAgICA8IS0tY29ubmVjdGlvblZlcnRpY2FsU2hhZnRPdG8gaXMgb3B0aW9uYWwtLT4KICAgICAgICAgIDxjb25uZWN0aW9uVmVydGljYWxTaGFmdE90bz57ez0lYmVhbnNoZWxsJSBjb20uY2Euc3YuZGV2dGVzdC51dGlsLkdlbmVyYXRlU3RyaW5nLmZvclJlZ2V4KCJbQS1aYS16MC05XXs1LDE1fSIpO319PC9jb25uZWN0aW9uVmVydGljYWxTaGFmdE90bz4KICAgICAgICAgIDwhLS1lbmRwb2ludEZsYXQgaXMgb3B0aW9uYWwtLT4KICAgICAgICAgIDxlbmRwb2ludEZsYXQ+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvZW5kcG9pbnRGbGF0PgogICAgICAgICAgPCEtLWNvbW1lbnRQYXJ0bmVyIGlzIG9wdGlvbmFsLS0+CiAgICAgICAgICA8Y29tbWVudFBhcnRuZXI+e3s9JWJlYW5zaGVsbCUgY29tLmNhLnN2LmRldnRlc3QudXRpbC5HZW5lcmF0ZVN0cmluZy5mb3JSZWdleCgiW0EtWmEtejAtOV17NSwxNX0iKTt9fTwvY29tbWVudFBhcnRuZXI+CiAgICAgICAgPC9pbnZlbnRvcnk+CiAgICAgIDwvcmVwb3J0RGF0YT4KICAgICAgPCEtLXdvcmtQYWNrYWdlIGlzIG9wdGlvbmFsLCBidXQgY2FuIGhhdmUgYW4gdW5saW1pdGVkIG51bWJlciBvZiBpbnN0YW5jZXMtLT4KICAgICAgPHdvcmtQYWNrYWdlPgogICAgICAgIDx3b3JrUGFja2FnZUNvZGU+e3s9Wzp3b3JrUGFja2FnZUNvZGU6MV19fTwvd29ya1BhY2thZ2VDb2RlPgogICAgICAgIDxxdWFudGl0eT57ez1bOnF1YW50aXR5OjFdfX08L3F1YW50aXR5PgogICAgICA8L3dvcmtQYWNrYWdlPgogICAgPC9rb1BhU3RhdGVGaW8+CiAgPC9zb2FwZW52OkJvZHk+Cjwvc29hcGVudjpFbnZlbG9wZT4=</request>
<style>document</style>
<use>literal</use>
<soapAction>http://www.logobject.ch/ns/KopaWfm/koPaStateFio</soapAction>
<sslInfo>
<ssl-keystore-file></ssl-keystore-file>
<ssl-keystore-password-enc>la9ddeeba77768f166cfc8990384c9c66a6cd1afac9fcef77005e0364060d9eb7</ssl-keystore-password-enc>
<ssl-alias></ssl-alias>
<ssl-key-password-enc>l8447254bbb33918950c27f00e67c0f0ea60c63a70b9af4a3b0b2bbbed85eacc6</ssl-key-password-enc>
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


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="C3DD84EEF04A11E7923BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="C3DD84ECF04A11E7923BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="C3DD84EAF04A11E7923BD8CB8A8AB1DA" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
