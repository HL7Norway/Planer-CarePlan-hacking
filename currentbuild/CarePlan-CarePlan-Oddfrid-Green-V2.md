# Tiltak - grønn sone - Planer CarePlan Hacking v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tiltak - grønn sone**

## Example CarePlan: Tiltak - grønn sone

Profile: [Sone-plan med tiltak (v2)](StructureDefinition-planer-hacking-v2-zone-careplan.md)

**partOf**: [CarePlan Plan for Oddfrid (v2)](CarePlan-CarePlan-Oddfrid-Zones-V2.md)

**status**: Active

**intent**: Plan

**title**: Tiltak - grønn sone

**subject**: [Kari Elisabeth Hansen Female, DoB: 1990-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Pasient-1.md)

**addresses**: [Condition ](Condition-ZoneCondition-Green-Oddfrid-V2.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Status** | **Description** |
| * | In Progress | Fortsett nåværende behandling |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "CarePlan-Oddfrid-Green-V2",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-careplan"]
  },
  "partOf" : [{
    "reference" : "CarePlan/CarePlan-Oddfrid-Zones-V2"
  }],
  "status" : "active",
  "intent" : "plan",
  "title" : "Tiltak - grønn sone",
  "subject" : {
    "reference" : "Patient/Pasient-1"
  },
  "addresses" : [{
    "reference" : "Condition/ZoneCondition-Green-Oddfrid-V2"
  }],
  "activity" : [{
    "detail" : {
      "status" : "in-progress",
      "description" : "Fortsett nåværende behandling"
    }
  }]
}

```
