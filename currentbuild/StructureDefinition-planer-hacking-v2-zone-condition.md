# Sonebetingelse i plan (v2) - Planer CarePlan Hacking v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sonebetingelse i plan (v2)**

## Resource Profile: Sonebetingelse i plan (v2) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-condition | *Version*:0.3.0 |
| Draft as of 2026-09-11 | *Computable Name*:PlanerHackingV2ZoneCondition |

 
Condition-profil for sonegrenser i pasientens plan (v2), med nivå (grønn/gul/rød) og terskelbeskrivelse. Anbefalt tiltak beskrives i den tilhørende CarePlan sin activity, ikke her. 

**Usages:**

* Refer to this Profile: [Sone-plan med tiltak (v2)](StructureDefinition-planer-hacking-v2-zone-careplan.md)
* Examples for this Profile: [Condition/ZoneCondition-Green-Oddfrid-V2](Condition-ZoneCondition-Green-Oddfrid-V2.md), [Condition/ZoneCondition-Red-Oddfrid-V2](Condition-ZoneCondition-Red-Oddfrid-V2.md) and [Condition/ZoneCondition-Yellow-Oddfrid-V2](Condition-ZoneCondition-Yellow-Oddfrid-V2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.planer-hacking|current/StructureDefinition/StructureDefinition-planer-hacking-v2-zone-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-planer-hacking-v2-zone-condition.csv), [Excel](StructureDefinition-planer-hacking-v2-zone-condition.xlsx), [Schematron](StructureDefinition-planer-hacking-v2-zone-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "planer-hacking-v2-zone-condition",
  "url" : "http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-condition",
  "version" : "0.3.0",
  "name" : "PlanerHackingV2ZoneCondition",
  "title" : "Sonebetingelse i plan (v2)",
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
  "description" : "Condition-profil for sonegrenser i pasientens plan (v2), med nivå (grønn/gul/rød) og terskelbeskrivelse. Anbefalt tiltak beskrives i den tilhørende CarePlan sin activity, ikke her.",
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
    }]
  }
}

```
