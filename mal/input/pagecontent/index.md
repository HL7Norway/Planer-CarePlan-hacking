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

I tillegg beskriver `MalCarePlan` hvordan pasientens sone kan uttrykkes direkte i planen:

- `CarePlan.extension[patientZone]` bruker extension `MalCarePlanPatientZone`.
- Extension-verdien er en `CodeableConcept` bundet til sonene `green`, `yellow` og `red`.
- `CarePlan.note` brukes til fri tekst som forklarer hvorfor pasienten ligger i valgt sone og hva som bør følges opp.

Skjemaet gir dermed både strukturert sonenivå for maskinell bruk og lesbar begrunnelse for klinisk oppfølging.

### Figur

Eksempel på en figur laget med PlantUML.

<img src="test.svg" width="40%" />
