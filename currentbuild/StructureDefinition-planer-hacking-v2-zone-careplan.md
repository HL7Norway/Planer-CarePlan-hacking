# Sone-plan med tiltak (v2) - Planer CarePlan Hacking v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sone-plan med tiltak (v2)**

## Resource Profile: Sone-plan med tiltak (v2) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-careplan | *Version*:0.3.0 |
| Draft as of 2026-09-11 | *Computable Name*:PlanerHackingV2ZoneCarePlan |

 
CarePlan-profil (v2) for én sone. Adresserer sonens Condition og beskriver det anbefalte tiltaket for sonen i CarePlan.activity.detail.description, i stedet for i Condition.note slik som i v1-modellen. 

**Usages:**

* Examples for this Profile: [CarePlan/CarePlan-Oddfrid-Green-V2](CarePlan-CarePlan-Oddfrid-Green-V2.md), [CarePlan/CarePlan-Oddfrid-Red-V2](CarePlan-CarePlan-Oddfrid-Red-V2.md) and [CarePlan/CarePlan-Oddfrid-Yellow-V2](CarePlan-CarePlan-Oddfrid-Yellow-V2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.planer-hacking|current/StructureDefinition/StructureDefinition-planer-hacking-v2-zone-careplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-planer-hacking-v2-zone-careplan.csv), [Excel](StructureDefinition-planer-hacking-v2-zone-careplan.xlsx), [Schematron](StructureDefinition-planer-hacking-v2-zone-careplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "planer-hacking-v2-zone-careplan",
  "url" : "http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-careplan",
  "version" : "0.3.0",
  "name" : "PlanerHackingV2ZoneCarePlan",
  "title" : "Sone-plan med tiltak (v2)",
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
  "description" : "CarePlan-profil (v2) for én sone. Adresserer sonens Condition og beskriver det anbefalte tiltaket for sonen i CarePlan.activity.detail.description, i stedet for i Condition.note slik som i v1-modellen.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "short" : "Den overordnede planen denne sone-planen er en del av",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-careplan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "patternCode" : "plan"
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-patient"]
      }]
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "short" : "Sonebetingelsen (Condition) denne sone-planen gjelder for",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.status",
      "path" : "CarePlan.activity.detail.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.description",
      "path" : "CarePlan.activity.detail.description",
      "short" : "Anbefalt/nødvendig tiltak for sonen",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
