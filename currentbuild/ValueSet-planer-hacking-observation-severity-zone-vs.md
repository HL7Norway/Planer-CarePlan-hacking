# Vurderingssone for observasjon (ValueSet) - Planer CarePlan Hacking v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vurderingssone for observasjon (ValueSet)**

## ValueSet: Vurderingssone for observasjon (ValueSet) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/planer-hacking/ValueSet/planer-hacking-observation-severity-zone-vs | *Version*:0.4.0 |
| Draft as of 2026-09-10 | *Computable Name*:PlanerHackingObservationSeverityZoneVS |

 
Tillatte soner for alvorlighetsgrad i observasjonsvurdering: grønn, gul, rød. 

 **References** 

* [Sonebetingelse i plan (v2)](StructureDefinition-planer-hacking-v2-zone-condition.md)
* [Sonebetingelse i plan](StructureDefinition-planer-hacking-zone-condition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "planer-hacking-observation-severity-zone-vs",
  "url" : "http://hl7.no/fhir/ig/planer-hacking/ValueSet/planer-hacking-observation-severity-zone-vs",
  "version" : "0.4.0",
  "name" : "PlanerHackingObservationSeverityZoneVS",
  "title" : "Vurderingssone for observasjon (ValueSet)",
  "status" : "draft",
  "date" : "2026-09-10",
  "publisher" : "HL7 Norge",
  "contact" : [{
    "name" : "HL7 Norge",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7.no"
    }]
  }],
  "description" : "Tillatte soner for alvorlighetsgrad i observasjonsvurdering: grønn, gul, rød.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.no/fhir/ig/planer-hacking/CodeSystem/planer-hacking-observation-severity-zone-cs"
    }]
  }
}

```
