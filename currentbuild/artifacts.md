# Artifacts Summary - Planer CarePlan Hacking v0.3.0

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
| [Plan (v2, overordnet)](StructureDefinition-planer-hacking-v2-careplan.md) | Overordnet CarePlan (v2) som samler tre sone-spesifikke CarePlaner (grønn/gul/rød). Sonene knyttes til denne planen via CarePlan.partOf på hver sone-plan, se PlanerHackingV2ZoneCarePlan. |
| [Sone-plan med tiltak (v2)](StructureDefinition-planer-hacking-v2-zone-careplan.md) | CarePlan-profil (v2) for én sone. Adresserer sonens Condition og beskriver det anbefalte tiltaket for sonen i CarePlan.activity.detail.description, i stedet for i Condition.note slik som i v1-modellen. |
| [Sonebetingelse i plan](StructureDefinition-planer-hacking-zone-condition.md) | Condition-profil for sonegrenser i pasientens plan, med nivå (grønn/gul/rød), terskelbeskrivelse og anbefalt tiltak. |
| [Sonebetingelse i plan (v2)](StructureDefinition-planer-hacking-v2-zone-condition.md) | Condition-profil for sonegrenser i pasientens plan (v2), med nivå (grønn/gul/rød) og terskelbeskrivelse. Anbefalt tiltak beskrives i den tilhørende CarePlan sin activity, ikke her. |

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
| [Plan for Oddfrid (v2)](CarePlan-CarePlan-Oddfrid-Zones-V2.md) | Overordnet eksempelplan for Oddfrid (v2), med tre sone-CarePlaner som inneholder tiltak |
| [Tiltak - grønn sone](CarePlan-CarePlan-Oddfrid-Green-V2.md) | Sone-plan (grønn) for Oddfrid med tiltak i activity.detail.description |
| [Tiltak - gul sone](CarePlan-CarePlan-Oddfrid-Yellow-V2.md) | Sone-plan (gul) for Oddfrid med tiltak i activity.detail.description |
| [Tiltak - rød sone](CarePlan-CarePlan-Oddfrid-Red-V2.md) | Sone-plan (rød) for Oddfrid med tiltak i activity.detail.description |
| [ZoneCondition-Green-Oddfrid](Condition-ZoneCondition-Green-Oddfrid.md) | Grønn sone for Oddfrid |
| [ZoneCondition-Green-Oddfrid-V2](Condition-ZoneCondition-Green-Oddfrid-V2.md) | Grønn sone for Oddfrid (v2) |
| [ZoneCondition-Red-Oddfrid](Condition-ZoneCondition-Red-Oddfrid.md) | Rød sone for Oddfrid |
| [ZoneCondition-Red-Oddfrid-V2](Condition-ZoneCondition-Red-Oddfrid-V2.md) | Rød sone for Oddfrid (v2) |
| [ZoneCondition-Yellow-Oddfrid](Condition-ZoneCondition-Yellow-Oddfrid.md) | Gul sone for Oddfrid |
| [ZoneCondition-Yellow-Oddfrid-V2](Condition-ZoneCondition-Yellow-Oddfrid-V2.md) | Gul sone for Oddfrid (v2) |

