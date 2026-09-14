# Plan for Oddfrid (v2) - Planer CarePlan Hacking v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan for Oddfrid (v2)**

## Example CarePlan: Plan for Oddfrid (v2)

Profile: [Plan (v2, overordnet)](StructureDefinition-planer-hacking-v2-careplan.md)

**status**: Active

**intent**: Plan

**title**: Plan for Oddfrid (v2)

**description**: Oddfrid ønsker å kunna gå turar med barnebarna igjen.

**subject**: [Kari Elisabeth Hansen Female, DoB: 1990-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Pasient-1.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "CarePlan-Oddfrid-Zones-V2",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-careplan"]
  },
  "status" : "active",
  "intent" : "plan",
  "title" : "Plan for Oddfrid (v2)",
  "description" : "Oddfrid ønsker å kunna gå turar med barnebarna igjen.",
  "subject" : {
    "reference" : "Patient/Pasient-1"
  }
}

```
