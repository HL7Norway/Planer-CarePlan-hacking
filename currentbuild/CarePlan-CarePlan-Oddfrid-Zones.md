# Plan for Oddfrid - Planer CarePlan Hacking v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan for Oddfrid**

## Example CarePlan: Plan for Oddfrid

Profile: [Plan](StructureDefinition-planer-hacking-careplan.md)

**status**: Active

**intent**: Plan

**title**: Plan for Oddfrid

**description**: Oddfrid ønsker å kunna gå turar med barnebarna igjen.

**subject**: [Kari Elisabeth Hansen Female, DoB: 1990-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Pasient-1.md)

**addresses**: 

* [Condition ](Condition-ZoneCondition-Green-Oddfrid.md)
* [Condition ](Condition-ZoneCondition-Yellow-Oddfrid.md)
* [Condition ](Condition-ZoneCondition-Red-Oddfrid.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "CarePlan-Oddfrid-Zones",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-careplan"]
  },
  "status" : "active",
  "intent" : "plan",
  "title" : "Plan for Oddfrid",
  "description" : "Oddfrid ønsker å kunna gå turar med barnebarna igjen.",
  "subject" : {
    "reference" : "Patient/Pasient-1"
  },
  "addresses" : [{
    "reference" : "Condition/ZoneCondition-Green-Oddfrid"
  },
  {
    "reference" : "Condition/ZoneCondition-Yellow-Oddfrid"
  },
  {
    "reference" : "Condition/ZoneCondition-Red-Oddfrid"
  }]
}

```
