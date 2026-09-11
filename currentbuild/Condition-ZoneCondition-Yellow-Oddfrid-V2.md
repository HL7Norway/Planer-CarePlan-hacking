# ZoneCondition-Yellow-Oddfrid-V2 - Planer CarePlan Hacking v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZoneCondition-Yellow-Oddfrid-V2**

## Example Condition: ZoneCondition-Yellow-Oddfrid-V2

Profile: [Sonebetingelse i plan (v2)](StructureDefinition-planer-hacking-v2-zone-condition.md)

**clinicalStatus**: Active

**severity**: Gul sone

**code**: Peak flow mellom 50 og 80 prosent

**subject**: [Kari Elisabeth Hansen Female, DoB: 1990-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Pasient-1.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ZoneCondition-Yellow-Oddfrid-V2",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/planer-hacking/StructureDefinition/planer-hacking-v2-zone-condition"]
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
      "code" : "yellow"
    }]
  },
  "code" : {
    "text" : "Peak flow mellom 50 og 80 prosent"
  },
  "subject" : {
    "reference" : "Patient/Pasient-1"
  }
}

```
