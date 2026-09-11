# Vurderingssone for observasjon - Planer-CarePlan Hacking v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vurderingssone for observasjon**

## CodeSystem: Vurderingssone for observasjon 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/planer-hacking/CodeSystem/planer-hacking-observation-severity-zone-cs | *Version*:0.2.0 |
| Draft as of 2026-09-10 | *Computable Name*:PlanerHackingObservationSeverityZoneCS |

 
Kodeverk for tre nivåer av alvorlighetsgrad ved vurdering av observasjoner i planer. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Vurderingssone for observasjon (ValueSet)](ValueSet-planer-hacking-observation-severity-zone-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "planer-hacking-observation-severity-zone-cs",
  "url" : "http://hl7.no/fhir/ig/planer-hacking/CodeSystem/planer-hacking-observation-severity-zone-cs",
  "version" : "0.2.0",
  "name" : "PlanerHackingObservationSeverityZoneCS",
  "title" : "Vurderingssone for observasjon",
  "status" : "draft",
  "date" : "2026-09-10",
  "publisher" : "HL7 Norge",
  "contact" : [{
    "name" : "HL7 Norge",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7.no"
    }]
  }],
  "description" : "Kodeverk for tre nivåer av alvorlighetsgrad ved vurdering av observasjoner i planer.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "green",
    "display" : "Grønn sone",
    "definition" : "Forventet verdiområde, normal oppfølging."
  },
  {
    "code" : "yellow",
    "display" : "Gul sone",
    "definition" : "Avvik som krever økt oppfølging eller revurdering."
  },
  {
    "code" : "red",
    "display" : "Rød sone",
    "definition" : "Kritisk avvik som krever rask intervensjon."
  }]
}

```
