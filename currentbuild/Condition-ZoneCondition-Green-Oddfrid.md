# ZoneCondition-Green-Oddfrid - Planer CarePlan Hacking v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZoneCondition-Green-Oddfrid**

## Example Condition: ZoneCondition-Green-Oddfrid

Profile: [Sonebetingelse i plan](StructureDefinition-planer-hacking-zone-condition.md)

**clinicalStatus**: Active

**severity**: Grønn sone

**code**: Peak flow over 80 prosent

**subject**: [Kari Elisabeth Hansen Female, DoB: 1990-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Pasient-1.md)

**note**: 

> 

Fortsett nåværende behandling




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ZoneCondition-Green-Oddfrid",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-zone-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "severity" : {
    "coding" : [{
      "system" : "http://hl7.no/fhir/ig/planer-hacking/CodeSystem/planer-hacking-observation-severity-zone-cs",
      "code" : "green"
    }]
  },
  "code" : {
    "text" : "Peak flow over 80 prosent"
  },
  "subject" : {
    "reference" : "Patient/Pasient-1"
  },
  "note" : [{
    "text" : "Fortsett nåværende behandling"
  }]
}

```
