<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Observation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings']) &gt;= 1">extension with URL = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings']) &lt;= 1">extension with URL = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:focus) &gt;= 1">focus: minimum cardinality of 'focus' is 1</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 1">focus: maximum cardinality of 'focus' is 1</sch:assert>
      <sch:assert test="count(f:hasMember) &gt;= 1">hasMember: minimum cardinality of 'hasMember' is 1</sch:assert>
      <sch:assert test="count(f:hasMember) &lt;= 1">hasMember: maximum cardinality of 'hasMember' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
