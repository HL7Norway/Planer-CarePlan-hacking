# Planer Care Plan v 2 - Planer CarePlan Hacking v0.4.1

* [**Table of Contents**](toc.md)
* **Planer Care Plan v 2**

## Planer Care Plan v 2

## CarePlan med vurderingssoner for observasjoner (v2, tiltak i CarePlan.activity)

Dette er en alternativ modell til [v1](planer-CarePlan-v1.md). I stedet for å beskrive det anbefalte tiltaket i `Condition.note`, samles hver sone i en egen `CarePlan` der tiltaket beskrives i `CarePlan.activity.detail.description`.

Sonene er fortsatt de samme tre nivåene:

* **Grønn sone (`green`)**: Forventet nivå, normal oppfølging.
* **Gul sone (`yellow`)**: Avvik som krever økt oppfølging eller revurdering.
* **Rød sone (`red`)**: Kritisk avvik som krever rask intervensjon.

### Sonelogikk og hvordan den er implementert

Modellen består av tre profiler:

* `PlanerHackingV2CarePlan` - den overordnede planen for pasienten (tittel, beskrivelse, periode, personlige mål i `note`).
* `PlanerHackingV2ZoneCarePlan` - én CarePlan-instans per sone, som: 
* peker til den overordnede planen via `CarePlan.partOf`
* peker til sonens `Condition` via `CarePlan.addresses`
* beskriver det påkrevde/anbefalte tiltaket for sonen i `CarePlan.activity.detail.description`, med status i `CarePlan.activity.detail.status`
 
* `PlanerHackingV2ZoneCondition` - samme sonebeskrivelse som i v1 (`clinicalStatus`, `severity.coding[zoneSystem].code`, `code.text`), men uten `note`, siden tiltaket nå ligger i sone-CarePlanen.

> **Merk:** FHIR R4 `CarePlan` har ikke noe eget `action`-element (det finnes på `PlanDefinition`/`RequestGroup`). Det nærmeste elementet for et konkret, utførbart tiltak i `CarePlan` er `CarePlan.activity.detail`, som er brukt her.

Siden en overordnet `CarePlan` i R4 ikke har et element som lister opp "underordnede" CarePlaner direkte, uttrykkes sammenhengen omvendt: hver sone-CarePlan peker tilbake til hovedplanen med `CarePlan.partOf`.

### PlantUML-modell for sonebeskrivelse (v2)

Modell der en overordnet CarePlan har tre sone-CarePlaner (partOf), som hver adresserer en sone-Condition og beskriver tiltaket i activity.detail

### Eksempel (pasientplan med soner, v2)

Et komplett eksempel er definert i FSH-instansene:

* [`CarePlan-Oddfrid-Zones-V2`](CarePlan-CarePlan-Oddfrid-Zones-V2.md) (overordnet plan)
* [`CarePlan-Oddfrid-Green-V2`](CarePlan-CarePlan-Oddfrid-Green-V2.md)
* [`CarePlan-Oddfrid-Yellow-V2`](CarePlan-CarePlan-Oddfrid-Yellow-V2.md)
* [`CarePlan-Oddfrid-Red-V2`](CarePlan-CarePlan-Oddfrid-Red-V2.md)
* [`ZoneCondition-Green-Oddfrid-V2`](Condition-ZoneCondition-Green-Oddfrid-V2.md)
* [`ZoneCondition-Yellow-Oddfrid-V2`](Condition-ZoneCondition-Yellow-Oddfrid-V2.md)
* [`ZoneCondition-Red-Oddfrid-V2`](Condition-ZoneCondition-Red-Oddfrid-V2.md)

Objektdiagrammet under viser hvordan eksempelinstansene henger sammen for Oddfrid:

Eksempelet viser hvert sonenivå som en egen `CarePlan-instans` med `partOf` til hovedplanen og `addresses` til sonens `Condition`. Tiltaket for sonen ligger i `activity.detail.description`, f.eks. gul sone: `"Øk medikamentdose og kontakt fastlege innen 24 timer"`.

