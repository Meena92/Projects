<?xml version="1.0" ?>

<TestCase name="test-data-driven-kioskv6" version="5">

<meta>
   <create version="8.5.0" buildNumber="8.5.0.58" author="admin" date="09/11/2015" host="localhost" />
   <lastEdited version="8.5.0" buildNumber="8.5.0.58" author="admin" date="09/11/2015" host="localhost" />
</meta>

<id>C44011AC589611E5A08D005056C00008</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9OC41LjAgKDguNS4wLjU4KSZub2Rlcz0tNzIyMTg4NTM4</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node name="test-row1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row50" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log></log>
<then>continue</then>
        <param>row1 CHECKING</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+MTAwMDAwPC9iYWxhbmNlPgogICAgICAgICAgICAgICAgICAgIDxuYW1lPnJvdzEgQ0hFQ0tJTkc8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+Q0hFQ0tJTkc8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFjY291bnRzPgogICAgICAgICAgICAgICAgICAgIDxiYWxhbmNlPjU1NTU8L2JhbGFuY2U+CiAgICAgICAgICAgICAgICAgICAgPG5hbWU+cm93MSBTQVZJTkdTPC9uYW1lPgogICAgICAgICAgICAgICAgICAgIDx0eXBlPlNBVklOR1M8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFkZHJlc3Nlcz4KICAgICAgICAgICAgICAgICAgICA8Y2l0eT5QbGFubzwvY2l0eT4KICAgICAgICAgICAgICAgICAgICA8bGluZTE+MTUwNSBMQkogRnJlZXdheTwvbGluZTE+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUyPlN1aXRlIDI1MDwvbGluZTI+CiAgICAgICAgICAgICAgICAgICAgPHN0YXRlPlRYPC9zdGF0ZT4KICAgICAgICAgICAgICAgICAgICA8emlwPjc1MjM0PC96aXA+CiAgICAgICAgICAgICAgICA8L2FkZHJlc3Nlcz4KICAgICAgICAgICAgICAgIDxlbWFpbD5yb3cxQGRhdGFzZXQuY29tPC9lbWFpbD4KICAgICAgICAgICAgICAgIDxmbmFtZT5GaXJzdDwvZm5hbWU+CiAgICAgICAgICAgICAgICA8bG5hbWU+Um93PC9sbmFtZT4KICAgICAgICAgICAgICAgIDxsb2dpbj5GaXJzdFJvdzwvbG9naW4+CiAgICAgICAgICAgICAgICA8bmV3RmxhZz50cnVlPC9uZXdGbGFnPgogICAgICAgICAgICAgICAgPHBob25lPjIxNDU1NTEyMTI8L3Bob25lPgogICAgICAgICAgICAgICAgPHB3ZD5wYXNzPC9wd2Q+CiAgICAgICAgICAgICAgICA8cm9sZUtleT5SRUdVTEFSPC9yb2xlS2V5PgogICAgICAgICAgICAgICAgPHNzbj4zMzMtMjItNDQ0NDwvc3NuPgogICAgICAgICAgICA8L3VzZXJPYmplY3Q+CiAgICAgICAgPC9hZGRVc2VyT2JqZWN0PgogICAgPC9zb2FwZW52OkJvZHk+Cjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row50" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row100" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>EdwardJordan</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+NDk8L2JhbGFuY2U+CiAgICAgICAgICAgICAgICAgICAgPG5hbWU+cHJpbWFyeTwvbmFtZT4KICAgICAgICAgICAgICAgICAgICA8dHlwZT5DSEVDS0lORzwvdHlwZT4KICAgICAgICAgICAgICAgIDwvYWNjb3VudHM+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+NDk8L2JhbGFuY2U+CiAgICAgICAgICAgICAgICAgICAgPG5hbWU+cHJpbWFyeTwvbmFtZT4KICAgICAgICAgICAgICAgICAgICA8dHlwZT5TQVZJTkdTPC90eXBlPgogICAgICAgICAgICAgICAgPC9hY2NvdW50cz4KICAgICAgICAgICAgICAgIDxhZGRyZXNzZXM+CiAgICAgICAgICAgICAgICAgICAgPGNpdHk+RGFsbGFzPC9jaXR5PgogICAgICAgICAgICAgICAgICAgIDxsaW5lMT4xNTA1IExCSiBGcmVld2F5PC9saW5lMT4KICAgICAgICAgICAgICAgICAgICA8bGluZTI+c3VpdGUgMjUwPC9saW5lMj4KICAgICAgICAgICAgICAgICAgICA8c3RhdGU+VFg8L3N0YXRlPgogICAgICAgICAgICAgICAgICAgIDx6aXA+NzUyMzQ8L3ppcD4KICAgICAgICAgICAgICAgIDwvYWRkcmVzc2VzPgogICAgICAgICAgICAgICAgPGVtYWlsPmVkd2FyZEBqb3JkYW4uY29tPC9lbWFpbD4KICAgICAgICAgICAgICAgIDxmbmFtZT5FZHdhcmQ8L2ZuYW1lPgogICAgICAgICAgICAgICAgPGxuYW1lPkpvcmRhbjwvbG5hbWU+CiAgICAgICAgICAgICAgICA8bG9naW4+RWR3YXJkSm9yZGFuPC9sb2dpbj4KICAgICAgICAgICAgICAgIDxuZXdGbGFnPnRydWU8L25ld0ZsYWc+CiAgICAgICAgICAgICAgICA8cGhvbmU+MjE0NTU1MTIxMjwvcGhvbmU+CiAgICAgICAgICAgICAgICA8cHdkPnBhc3M8L3B3ZD4KICAgICAgICAgICAgICAgIDxyb2xlS2V5PlJFR1VMQVI8L3JvbGVLZXk+CiAgICAgICAgICAgICAgICA8c3NuPjMzMy0yMi00NDQ0PC9zc24+CiAgICAgICAgICAgIDwvdXNlck9iamVjdD4KICAgICAgICA8L2FkZFVzZXJPYmplY3Q+CiAgICA8L3NvYXBlbnY6Qm9keT4KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row100" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row101" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>OneHundred</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+MTAwPC9iYWxhbmNlPgogICAgICAgICAgICAgICAgICAgIDxuYW1lPnByaW1hcnk8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+Q0hFQ0tJTkc8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFjY291bnRzPgogICAgICAgICAgICAgICAgICAgIDxiYWxhbmNlPjEwMDwvYmFsYW5jZT4KICAgICAgICAgICAgICAgICAgICA8bmFtZT5wcmltYXJ5PC9uYW1lPgogICAgICAgICAgICAgICAgICAgIDx0eXBlPlNBVklOR1M8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFkZHJlc3Nlcz4KICAgICAgICAgICAgICAgICAgICA8Y2l0eT5EYWxsYXM8L2NpdHk+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUxPjEwMCBMQkogRnJlZXdheTwvbGluZTE+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUyPnN1aXRlIDEwMDwvbGluZTI+CiAgICAgICAgICAgICAgICAgICAgPHN0YXRlPlRYPC9zdGF0ZT4KICAgICAgICAgICAgICAgICAgICA8emlwPjc1MjM0PC96aXA+CiAgICAgICAgICAgICAgICA8L2FkZHJlc3Nlcz4KICAgICAgICAgICAgICAgIDxlbWFpbD4xMDBAZGF0YXNldC5jb208L2VtYWlsPgogICAgICAgICAgICAgICAgPGZuYW1lPk9uZTwvZm5hbWU+CiAgICAgICAgICAgICAgICA8bG5hbWU+SHVuZHJlZDwvbG5hbWU+CiAgICAgICAgICAgICAgICA8bG9naW4+T25lSHVuZHJlZDwvbG9naW4+CiAgICAgICAgICAgICAgICA8bmV3RmxhZz50cnVlPC9uZXdGbGFnPgogICAgICAgICAgICAgICAgPHBob25lPjIxNDU1NTEyMTI8L3Bob25lPgogICAgICAgICAgICAgICAgPHB3ZD5wYXNzPC9wd2Q+CiAgICAgICAgICAgICAgICA8cm9sZUtleT5SRUdVTEFSPC9yb2xlS2V5PgogICAgICAgICAgICAgICAgPHNzbj4zMzMtMjItNDQ0NDwvc3NuPgogICAgICAgICAgICA8L3VzZXJPYmplY3Q+CiAgICAgICAgPC9hZGRVc2VyT2JqZWN0PgogICAgPC9zb2FwZW52OkJvZHk+Cjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row101" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row199" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>OneZeroOne</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+MTAxPC9iYWxhbmNlPgogICAgICAgICAgICAgICAgICAgIDxuYW1lPnByaW1hcnk8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+Q0hFQ0tJTkc8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFjY291bnRzPgogICAgICAgICAgICAgICAgICAgIDxiYWxhbmNlPjEwMTwvYmFsYW5jZT4KICAgICAgICAgICAgICAgICAgICA8bmFtZT5wcmltYXJ5PC9uYW1lPgogICAgICAgICAgICAgICAgICAgIDx0eXBlPlNBVklOR1M8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFkZHJlc3Nlcz4KICAgICAgICAgICAgICAgICAgICA8Y2l0eT5EYWxsYXM8L2NpdHk+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUxPjEwMSBTdHJlZXQ8L2xpbmUxPgogICAgICAgICAgICAgICAgICAgIDxsaW5lMj5zdWl0ZSAxMDE8L2xpbmUyPgogICAgICAgICAgICAgICAgICAgIDxzdGF0ZT5UWDwvc3RhdGU+CiAgICAgICAgICAgICAgICAgICAgPHppcD43NTIzNDwvemlwPgogICAgICAgICAgICAgICAgPC9hZGRyZXNzZXM+CiAgICAgICAgICAgICAgICA8ZW1haWw+T25lWmVyb09uZUBkYXRhc2V0LmNvbTwvZW1haWw+CiAgICAgICAgICAgICAgICA8Zm5hbWU+T25lPC9mbmFtZT4KICAgICAgICAgICAgICAgIDxsbmFtZT5aZXJvT25lPC9sbmFtZT4KICAgICAgICAgICAgICAgIDxsb2dpbj5PbmVaZXJvT25lPC9sb2dpbj4KICAgICAgICAgICAgICAgIDxuZXdGbGFnPnRydWU8L25ld0ZsYWc+CiAgICAgICAgICAgICAgICA8cGhvbmU+MjE0NTU1MTIxMjwvcGhvbmU+CiAgICAgICAgICAgICAgICA8cHdkPnBhc3M8L3B3ZD4KICAgICAgICAgICAgICAgIDxyb2xlS2V5PlJFR1VMQVI8L3JvbGVLZXk+CiAgICAgICAgICAgICAgICA8c3NuPjMzMy0yMi00NDQ0PC9zc24+CiAgICAgICAgICAgIDwvdXNlck9iamVjdD4KICAgICAgICA8L2FkZFVzZXJPYmplY3Q+CiAgICA8L3NvYXBlbnY6Qm9keT4KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row199" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row-522" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>OneNineNine</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+MTk5PC9iYWxhbmNlPgogICAgICAgICAgICAgICAgICAgIDxuYW1lPnByaW1hcnk8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+Q0hFQ0tJTkc8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFjY291bnRzPgogICAgICAgICAgICAgICAgICAgIDxiYWxhbmNlPjE5OTwvYmFsYW5jZT4KICAgICAgICAgICAgICAgICAgICA8bmFtZT5wcmltYXJ5PC9uYW1lPgogICAgICAgICAgICAgICAgICAgIDx0eXBlPlNBVklOR1M8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFkZHJlc3Nlcz4KICAgICAgICAgICAgICAgICAgICA8Y2l0eT5EYWxsYXM8L2NpdHk+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUxPjE5OSBTdHJlZXQ8L2xpbmUxPgogICAgICAgICAgICAgICAgICAgIDxsaW5lMj5zdWl0ZSAxOTk8L2xpbmUyPgogICAgICAgICAgICAgICAgICAgIDxzdGF0ZT5UWDwvc3RhdGU+CiAgICAgICAgICAgICAgICAgICAgPHppcD43NTIzNDwvemlwPgogICAgICAgICAgICAgICAgPC9hZGRyZXNzZXM+CiAgICAgICAgICAgICAgICA8ZW1haWw+MTk5QGRhdGFzZXQuY29tPC9lbWFpbD4KICAgICAgICAgICAgICAgIDxmbmFtZT5PbmU8L2ZuYW1lPgogICAgICAgICAgICAgICAgPGxuYW1lPk5pbmVOaW5lPC9sbmFtZT4KICAgICAgICAgICAgICAgIDxsb2dpbj5PbmVOaW5lTmluZTwvbG9naW4+CiAgICAgICAgICAgICAgICA8bmV3RmxhZz50cnVlPC9uZXdGbGFnPgogICAgICAgICAgICAgICAgPHBob25lPjIxNDU1NTEyMTI8L3Bob25lPgogICAgICAgICAgICAgICAgPHB3ZD5wYXNzPC9wd2Q+CiAgICAgICAgICAgICAgICA8cm9sZUtleT5SRUdVTEFSPC9yb2xlS2V5PgogICAgICAgICAgICAgICAgPHNzbj4zMzMtMjItNDQ0NDwvc3NuPgogICAgICAgICAgICA8L3VzZXJPYmplY3Q+CiAgICAgICAgPC9hZGRVc2VyT2JqZWN0PgogICAgPC9zb2FwZW52OkJvZHk+Cjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row-522" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row-1152" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>FiveTwoTwo</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+NTIyPC9iYWxhbmNlPgogICAgICAgICAgICAgICAgICAgIDxuYW1lPnByaW1hcnk8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+Q0hFQ0tJTkc8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFjY291bnRzPgogICAgICAgICAgICAgICAgICAgIDxiYWxhbmNlPjUyMjwvYmFsYW5jZT4KICAgICAgICAgICAgICAgICAgICA8bmFtZT5wcmltYXJ5PC9uYW1lPgogICAgICAgICAgICAgICAgICAgIDx0eXBlPlNBVklOR1M8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFkZHJlc3Nlcz4KICAgICAgICAgICAgICAgICAgICA8Y2l0eT5EYWxsYXM8L2NpdHk+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUxPjUyMiBTdHJlZXQ8L2xpbmUxPgogICAgICAgICAgICAgICAgICAgIDxsaW5lMj5zdWl0ZSA1MjI8L2xpbmUyPgogICAgICAgICAgICAgICAgICAgIDxzdGF0ZT5UWDwvc3RhdGU+CiAgICAgICAgICAgICAgICAgICAgPHppcD43NTIzNDwvemlwPgogICAgICAgICAgICAgICAgPC9hZGRyZXNzZXM+CiAgICAgICAgICAgICAgICA8ZW1haWw+Rml2ZVR3b1R3b0BkYXRhc2V0LmNvbTwvZW1haWw+CiAgICAgICAgICAgICAgICA8Zm5hbWU+Rml2ZTwvZm5hbWU+CiAgICAgICAgICAgICAgICA8bG5hbWU+VHdvVHdvPC9sbmFtZT4KICAgICAgICAgICAgICAgIDxsb2dpbj5GaXZlVHdvVHdvPC9sb2dpbj4KICAgICAgICAgICAgICAgIDxuZXdGbGFnPnRydWU8L25ld0ZsYWc+CiAgICAgICAgICAgICAgICA8cGhvbmU+MjE0NTU1MTIxMjwvcGhvbmU+CiAgICAgICAgICAgICAgICA8cHdkPnBhc3M8L3B3ZD4KICAgICAgICAgICAgICAgIDxyb2xlS2V5PlJFR1VMQVI8L3JvbGVLZXk+CiAgICAgICAgICAgICAgICA8c3NuPjMzMy0yMi00NDQ0PC9zc24+CiAgICAgICAgICAgIDwvdXNlck9iamVjdD4KICAgICAgICA8L2FkZFVzZXJPYmplY3Q+CiAgICA8L3NvYXBlbnY6Qm9keT4KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row-1152" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="test-row-notfound" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>LastRow</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+MTE1MjwvYmFsYW5jZT4KICAgICAgICAgICAgICAgICAgICA8bmFtZT5wcmltYXJ5PC9uYW1lPgogICAgICAgICAgICAgICAgICAgIDx0eXBlPkNIRUNLSU5HPC90eXBlPgogICAgICAgICAgICAgICAgPC9hY2NvdW50cz4KICAgICAgICAgICAgICAgIDxhY2NvdW50cz4KICAgICAgICAgICAgICAgICAgICA8YmFsYW5jZT4xMTUyPC9iYWxhbmNlPgogICAgICAgICAgICAgICAgICAgIDxuYW1lPnByaW1hcnk8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+U0FWSU5HUzwvdHlwZT4KICAgICAgICAgICAgICAgIDwvYWNjb3VudHM+CiAgICAgICAgICAgICAgICA8YWRkcmVzc2VzPgogICAgICAgICAgICAgICAgICAgIDxjaXR5PkRhbGxhczwvY2l0eT4KICAgICAgICAgICAgICAgICAgICA8bGluZTE+MTUwNSBMQkogRnJlZXdheTwvbGluZTE+CiAgICAgICAgICAgICAgICAgICAgPGxpbmUyPnN1aXRlIDI1MDwvbGluZTI+CiAgICAgICAgICAgICAgICAgICAgPHN0YXRlPlRYPC9zdGF0ZT4KICAgICAgICAgICAgICAgICAgICA8emlwPjc1MjM0PC96aXA+CiAgICAgICAgICAgICAgICA8L2FkZHJlc3Nlcz4KICAgICAgICAgICAgICAgIDxlbWFpbD5sYXN0cm93QGRhdGFzZXQuY29tPC9lbWFpbD4KICAgICAgICAgICAgICAgIDxmbmFtZT5MYXN0PC9mbmFtZT4KICAgICAgICAgICAgICAgIDxsbmFtZT5Sb3c8L2xuYW1lPgogICAgICAgICAgICAgICAgPGxvZ2luPkxhc3RSb3c8L2xvZ2luPgogICAgICAgICAgICAgICAgPG5ld0ZsYWc+dHJ1ZTwvbmV3RmxhZz4KICAgICAgICAgICAgICAgIDxwaG9uZT4yMTQ1NTUxMjEyPC9waG9uZT4KICAgICAgICAgICAgICAgIDxwd2Q+cGFzczwvcHdkPgogICAgICAgICAgICAgICAgPHJvbGVLZXk+UkVHVUxBUjwvcm9sZUtleT4KICAgICAgICAgICAgICAgIDxzc24+MzMzLTIyLTQ0NDQ8L3Nzbj4KICAgICAgICAgICAgPC91c2VyT2JqZWN0PgogICAgICAgIDwvYWRkVXNlck9iamVjdD4KICAgIDwvc29hcGVudjpCb2R5Pgo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="test-row-notfound" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="77CE41D5589711E5A08D005056C00008" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains String" type="com.itko.lisa.test.CheckResultContains">
<log>Assertion name: Ensure Result Contains String checks for: false is of type: Result as String Contains Given String.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <param>404 Not Found</param>
</CheckResult>

<url>{{DATA_DRIVEN_VS_ENDPOINT}}</url>
<action>addUserObject</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPgogICAgPHNvYXBlbnY6Qm9keT4KICAgICAgICA8YWRkVXNlck9iamVjdCB4bWxucz0iaHR0cDovL2VqYjMuZXhhbXBsZXMuaXRrby5jb20vIj4KICAgICAgICAgICAgPHVzZXJPYmplY3QgeG1sbnM9IiI+CiAgICAgICAgICAgICAgICA8YWNjb3VudHM+CiAgICAgICAgICAgICAgICAgICAgPGJhbGFuY2U+OTA5MDwvYmFsYW5jZT4KICAgICAgICAgICAgICAgICAgICA8bmFtZT5Ob3QgRm91bmQ8L25hbWU+CiAgICAgICAgICAgICAgICAgICAgPHR5cGU+Q0hFQ0tJTkc8L3R5cGU+CiAgICAgICAgICAgICAgICA8L2FjY291bnRzPgogICAgICAgICAgICAgICAgPGFjY291bnRzPgogICAgICAgICAgICAgICAgICAgIDxiYWxhbmNlPjExNTI8L2JhbGFuY2U+CiAgICAgICAgICAgICAgICAgICAgPG5hbWU+cHJpbWFyeTwvbmFtZT4KICAgICAgICAgICAgICAgICAgICA8dHlwZT5TQVZJTkdTPC90eXBlPgogICAgICAgICAgICAgICAgPC9hY2NvdW50cz4KICAgICAgICAgICAgICAgIDxhZGRyZXNzZXM+CiAgICAgICAgICAgICAgICAgICAgPGNpdHk+RGFsbGFzPC9jaXR5PgogICAgICAgICAgICAgICAgICAgIDxsaW5lMT4xNTA1IExCSiBGcmVld2F5PC9saW5lMT4KICAgICAgICAgICAgICAgICAgICA8bGluZTI+c3VpdGUgMjUwPC9saW5lMj4KICAgICAgICAgICAgICAgICAgICA8c3RhdGU+VFg8L3N0YXRlPgogICAgICAgICAgICAgICAgICAgIDx6aXA+NzUyMzQ8L3ppcD4KICAgICAgICAgICAgICAgIDwvYWRkcmVzc2VzPgogICAgICAgICAgICAgICAgPGVtYWlsPmxhc3Ryb3dAZGF0YXNldC5jb208L2VtYWlsPgogICAgICAgICAgICAgICAgPGZuYW1lPkxhc3Q8L2ZuYW1lPgogICAgICAgICAgICAgICAgPGxuYW1lPlJvdzwvbG5hbWU+CiAgICAgICAgICAgICAgICA8bG9naW4+TGFzdFJvdzwvbG9naW4+CiAgICAgICAgICAgICAgICA8bmV3RmxhZz50cnVlPC9uZXdGbGFnPgogICAgICAgICAgICAgICAgPHBob25lPjIxNDU1NTEyMTI8L3Bob25lPgogICAgICAgICAgICAgICAgPHB3ZD5wYXNzPC9wd2Q+CiAgICAgICAgICAgICAgICA8cm9sZUtleT5SRUdVTEFSPC9yb2xlS2V5PgogICAgICAgICAgICAgICAgPHNzbj4zMzMtMjItNDQ0NDwvc3NuPgogICAgICAgICAgICA8L3VzZXJPYmplY3Q+CiAgICAgICAgPC9hZGRVc2VyT2JqZWN0PgogICAgPC9zb2FwZW52OkJvZHk+Cjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="C44011B2589611E5A08D005056C00008" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="C44011B0589611E5A08D005056C00008" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="C44011AE589611E5A08D005056C00008" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
