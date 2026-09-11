<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CarePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CarePlan</sch:title>
    <sch:rule context="f:CarePlan">
      <sch:assert test="count(f:partOf) &gt;= 1">partOf: minimum cardinality of 'partOf' is 1</sch:assert>
      <sch:assert test="count(f:partOf) &lt;= 1">partOf: maximum cardinality of 'partOf' is 1</sch:assert>
      <sch:assert test="count(f:addresses) &gt;= 1">addresses: minimum cardinality of 'addresses' is 1</sch:assert>
      <sch:assert test="count(f:addresses) &lt;= 1">addresses: maximum cardinality of 'addresses' is 1</sch:assert>
      <sch:assert test="count(f:activity) &gt;= 1">activity: minimum cardinality of 'activity' is 1</sch:assert>
      <sch:assert test="count(f:activity) &lt;= 1">activity: maximum cardinality of 'activity' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity</sch:title>
    <sch:rule context="f:CarePlan/f:activity">
      <sch:assert test="count(f:detail) &gt;= 1">detail: minimum cardinality of 'detail' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity/f:detail</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail">
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
