# Artifacts Summary - Planer CarePlan Hacking v0.2.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Blodprøve](StructureDefinition-planer-hacking-observation-blodprove.md) | Profil for vanlige blodprøver |
| [Pasient](StructureDefinition-planer-hacking-patient.md) | Informasjon om pasienten, basert på no-basis. |
| [Plan](StructureDefinition-planer-hacking-careplan.md) | CarePlan-profil inspirert av xShare (forretning + applikasjon), tilpasset Planer API-behov for planinnhold. |
| [Sonebetingelse i plan](StructureDefinition-planer-hacking-zone-condition.md) | Condition-profil for sonegrenser i pasientens plan, med nivå (grønn/gul/rød), terskelbeskrivelse og anbefalt tiltak. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Vurderingssone for observasjon (ValueSet)](ValueSet-planer-hacking-observation-severity-zone-vs.md) | Tillatte soner for alvorlighetsgrad i observasjonsvurdering: grønn, gul, rød. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Vurderingssone for observasjon](CodeSystem-planer-hacking-observation-severity-zone-cs.md) | Kodeverk for tre nivåer av alvorlighetsgrad ved vurdering av observasjoner i planer. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Pasient-1](Patient-Pasient-1.md) | Eksempel på norsk pasient med fødselsnummer, navn og kontaktinformasjon |
| [Plan for Oddfrid](CarePlan-CarePlan-Oddfrid-Zones.md) | Eksempelplan for Oddfrid med sone-definisjoner representert i CarePlan.addresses |
| [ZoneCondition-Green-Oddfrid](Condition-ZoneCondition-Green-Oddfrid.md) | Grønn sone for Oddfrid |
| [ZoneCondition-Red-Oddfrid](Condition-ZoneCondition-Red-Oddfrid.md) | Rød sone for Oddfrid |
| [ZoneCondition-Yellow-Oddfrid](Condition-ZoneCondition-Yellow-Oddfrid.md) | Gul sone for Oddfrid |

