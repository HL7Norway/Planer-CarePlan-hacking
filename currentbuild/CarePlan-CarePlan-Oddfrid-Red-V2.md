# Tiltak - rød sone - Planer CarePlan Hacking v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tiltak - rød sone**

## Example CarePlan: Tiltak - rød sone

Profile: [Sone-plan med tiltak (v2)](StructureDefinition-planer-hacking-v2-zone-careplan.md)

**partOf**: [CarePlan Plan for Oddfrid (v2)](CarePlan-CarePlan-Oddfrid-Zones-V2.md)

**status**: Active

**intent**: Plan

**title**: Tiltak - rød sone

**subject**: [Kari Elisabeth Hansen Female, DoB: 1990-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Pasient-1.md)

**addresses**: [Condition ](Condition-ZoneCondition-Red-Oddfrid-V2.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Status** | **Description** |
| * | Not Started | Ring nødetatene umiddelbart |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "CarePlan-Oddfrid-Red-V2",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-careplan"]
  },
  "partOf" : [{
    "reference" : "CarePlan/CarePlan-Oddfrid-Zones-V2"
  }],
  "status" : "active",
  "intent" : "plan",
  "title" : "Tiltak - rød sone",
  "subject" : {
    "reference" : "Patient/Pasient-1"
  },
  "addresses" : [{
    "reference" : "Condition/ZoneCondition-Red-Oddfrid-V2"
  }],
  "activity" : [{
    "detail" : {
      "status" : "not-started",
      "description" : "Ring nødetatene umiddelbart"
    }
  }]
}

```
