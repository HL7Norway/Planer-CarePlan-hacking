### Tittel

Introduksjonstekst (husk at dette er en mal, og ALL tekst må endres - dette er kun et eksempel)

### Mål

Målet med denne implementasjonsguiden er å gi en standardisert måte å representere og utveksle helsedata på ved hjelp av HL7 FHIR. Guiden beskriver hvordan ulike FHIR-profiler og ressurser kan brukes for å oppnå interoperabilitet mellom helsesystemer.

### Omfang

Denne implementasjonsguiden dekker følgende områder:

- Pasientadministrasjon
- Kliniske observasjoner
- Medisinsk historikk
- Behandlingsplaner
- Laboratorieresultater

### Brukstilfeller

#### Pasientregistrering

Denne guiden beskriver hvordan pasienter kan registreres i et helsesystem ved hjelp av FHIR `Patient`-ressursen. Eksempler inkluderer opprettelse, oppdatering og sletting av pasientdata.

#### Kliniske observasjoner

Guiden viser hvordan kliniske observasjoner som blodtrykk, puls og temperatur kan representeres ved hjelp av FHIR `Observation`-ressursen.

### Kombinert forretnings- og applikasjonsbeskrivelse (xShare + Planer)

Denne guiden kombinerer forretningsperspektivet og applikasjonsperspektivet fra xShare CarePlan:

- **Forretning:** Pasient, helsepersonell, omsorgspersoner og organisasjon samhandler om en strukturert plan med mål, tiltak og oppfølging over tid.
- **Applikasjon:** Pasient- og fagapplikasjoner henter, oppdaterer og deler planinnhold via journalsystemet som kilde for sannhet.

Profilene i guiden er samtidig tilpasset planinnhold slik det brukes i Planer API, med fokus på maskinlesbar oppfølging av observasjoner i plan.

#### Vurderingssoner for observasjoner (grønn/gul/rød)

For å støtte planoppfølging med tydelig alvorlighetsnivå innføres en standardisert sonemodell i `Observation.interpretation`:

- **Grønn sone (`green`)**: Forventet nivå, normal oppfølging.
- **Gul sone (`yellow`)**: Avvik som krever økt oppfølging eller revurdering.
- **Rød sone (`red`)**: Kritisk avvik som krever rask intervensjon.

Dette gir en enkel og entydig måte å representere soner for evaluering av én type observasjon i en plan, og kan kobles direkte til aktivitet- og måloppfølging i `CarePlan`.

#### Sonebeskrivelse for pasient i CarePlan

`MalCarePlan` bruker ikke extension for soner. I stedet beskrives sonene som `Condition`-ressurser som refereres fra `CarePlan.addresses`.

- `CarePlan.addresses` peker til `MalZoneCondition`.
- Hver `MalZoneCondition` inneholder:
  - `severity` = `green | yellow | red`
  - `code.text` = terskel/område (f.eks. "Peak flow 50-80%")
  - `note.text` = anbefalt tiltak for sonen
- `CarePlan.description`/`CarePlan.note` kan brukes for overordnet planinformasjon og personlige mål.

Denne modellen gjør sone-definisjoner eksplisitte og gjenbrukbare i standard FHIR-struktur, uten egne CarePlan-extensions.

#### PlantUML-modell for sonebeskrivelse

<img src="careplan-zones-model.svg" alt="Modell der CarePlan adresserer sone-Condition med nivå, terskel og tiltak" width="80%" />

#### Eksempel (pasientplan med soner)

Et komplett eksempel er definert i FSH-instansene:

- `CarePlan-Oddfrid-Zones`
- `ZoneCondition-Green-Oddfrid`
- `ZoneCondition-Yellow-Oddfrid`
- `ZoneCondition-Red-Oddfrid`

Eksempelet viser samme prinsipp som i Pasientens planer API: hver sone modelleres med terskel i `MalZoneCondition.code.text`, tiltak i `MalZoneCondition.note.text` og nivå i `MalZoneCondition.severity`, referert fra `CarePlan.addresses`.

### Figur

Eksempel på en figur laget med PlantUML.

<img src="test.svg" alt="Eksempel på PlantUML-figur i implementasjonsguiden" width="40%" />
