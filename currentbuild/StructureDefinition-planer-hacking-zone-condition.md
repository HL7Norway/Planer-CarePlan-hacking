# Sonebetingelse i plan - Planer CarePlan Hacking v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sonebetingelse i plan**

## Resource Profile: Sonebetingelse i plan 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-zone-condition | *Version*:0.4.1 |
| Draft as of 2026-09-11 | *Computable Name*:PlanerHackingZoneCondition |

 
Condition-profil for sonegrenser i pasientens plan, med nivå (grønn/gul/rød), terskelbeskrivelse og anbefalt tiltak. 

**Usages:**

* Refer to this Profile: [Plan](StructureDefinition-planer-hacking-careplan.md)
* Examples for this Profile: [Condition/ZoneCondition-Green-Oddfrid](Condition-ZoneCondition-Green-Oddfrid.md), [Condition/ZoneCondition-Red-Oddfrid](Condition-ZoneCondition-Red-Oddfrid.md) and [Condition/ZoneCondition-Yellow-Oddfrid](Condition-ZoneCondition-Yellow-Oddfrid.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.planer-hacking|current/StructureDefinition/StructureDefinition-planer-hacking-zone-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-planer-hacking-zone-condition.csv), [Excel](StructureDefinition-planer-hacking-zone-condition.xlsx), [Schematron](StructureDefinition-planer-hacking-zone-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "planer-hacking-zone-condition",
  "url" : "http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-zone-condition",
  "version" : "0.4.1",
  "name" : "PlanerHackingZoneCondition",
  "title" : "Sonebetingelse i plan",
  "status" : "draft",
  "date" : "2026-09-11",
  "publisher" : "HL7 Norge",
  "contact" : [{
    "name" : "HL7 Norge",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7.no"
    }]
  }],
  "description" : "Condition-profil for sonegrenser i pasientens plan, med nivå (grønn/gul/rød), terskelbeskrivelse og anbefalt tiltak.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity.coding",
      "path" : "Condition.severity.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity.coding:zoneSystem",
      "path" : "Condition.severity.coding",
      "sliceName" : "zoneSystem",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity.coding:zoneSystem.system",
      "path" : "Condition.severity.coding.system",
      "min" : 1,
      "patternUri" : "http://hl7.no/fhir/ig/planer-hacking/CodeSystem/planer-hacking-observation-severity-zone-cs"
    },
    {
      "id" : "Condition.severity.coding:zoneSystem.code",
      "path" : "Condition.severity.coding.code",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ig/planer-hacking/ValueSet/planer-hacking-observation-severity-zone-vs"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "min" : 1
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-patient"]
      }]
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Anbefalt tiltak for sonen",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
