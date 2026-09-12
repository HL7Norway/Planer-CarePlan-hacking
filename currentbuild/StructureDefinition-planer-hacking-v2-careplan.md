# Plan (v2, overordnet) - Planer CarePlan Hacking v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan (v2, overordnet)**

## Resource Profile: Plan (v2, overordnet) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-careplan | *Version*:0.4.0 |
| Draft as of 2026-09-11 | *Computable Name*:PlanerHackingV2CarePlan |

 
Overordnet CarePlan (v2) som samler tre sone-spesifikke CarePlaner (grønn/gul/rød). Sonene knyttes til denne planen via CarePlan.partOf på hver sone-plan, se PlanerHackingV2ZoneCarePlan. 

**Usages:**

* Refer to this Profile: [Sone-plan med tiltak (v2)](StructureDefinition-planer-hacking-v2-zone-careplan.md)
* Examples for this Profile: [CarePlan/CarePlan-Oddfrid-Zones-V2](CarePlan-CarePlan-Oddfrid-Zones-V2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.planer-hacking|current/StructureDefinition/StructureDefinition-planer-hacking-v2-careplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-planer-hacking-v2-careplan.csv), [Excel](StructureDefinition-planer-hacking-v2-careplan.xlsx), [Schematron](StructureDefinition-planer-hacking-v2-careplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "planer-hacking-v2-careplan",
  "url" : "http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-careplan",
  "version" : "0.4.0",
  "name" : "PlanerHackingV2CarePlan",
  "title" : "Plan (v2, overordnet)",
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
  "description" : "Overordnet CarePlan (v2) som samler tre sone-spesifikke CarePlaner (grønn/gul/rød). Sonene knyttes til denne planen via CarePlan.partOf på hver sone-plan, se PlanerHackingV2ZoneCarePlan.",
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
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
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
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "short" : "Fritekst, for eksempel personlige mål eller supplerende planinformasjon",
      "mustSupport" : true
    }]
  }
}

```
