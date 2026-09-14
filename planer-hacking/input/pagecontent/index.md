### Egenbehandlignsplan med FHIR

Eksempler på hvordan FHIR CarePlan kan benyttes for å modellere Pasientens planer (egenbehandlignsplan).

### Disclaimer

**NOT FOR CLINICAL USE**

This implementation guide is a demonstration project developed for the [Norwegian FHIR Hackathon in Oslo, November 2026](https://hl7norway.github.io/Norwegian-FHIR-Hackathon-2026/currentbuild/index.html). This IG is purely for testing/demonstration purposes.

**This software:**

- Is NOT validated for clinical use
- Is NOT approved or certified by any regulatory authority
- Should NOT be used for any real healthcare decision-making
- Should NOT be used in production clinical environments
- Is provided "AS IS" without warranty of any kind

Healthcare professionals must rely on their clinical judgment and validated, approved systems for patient care decisions. The developers assume no liability for any consequences resulting from the use or misuse of this software.

### Mål

Målet er å utforske løsningsforslag på hvordan FHIR CarePlan kan benyttes for å utveksle og samarbeide om egenbehandlingsplaner for pasient.

### Omfang

Denne implementasjonsguiden dekker følgende områder:

- Pasientadministrasjon
- Kliniske observasjoner
- Medisinsk historikk
- Behandlingsplaner

### Brukstilfeller

#### Kliniske observasjoner

Guiden viser ikke hvordan kliniske observasjoner som blodtrykk, puls og temperatur kan representeres ved hjelp av FHIR `Observation`-ressursen, det henvises til egen dokumentasjon for Pasientens måledata.

### Kombinert forretnings- og applikasjonsbeskrivelse (xShare + Planer)

Denne guiden kombinerer forretningsperspektivet og applikasjonsperspektivet fra xShare CarePlan:

- **Forretning:** Pasient, helsepersonell, omsorgspersoner og organisasjon samhandler om en strukturert plan med mål, tiltak og oppfølging over tid.
- **Applikasjon:** Pasient- og fagapplikasjoner henter, oppdaterer og deler planinnhold via journalsystemet som kilde for sannhet.

Profilene i guiden er samtidig tilpasset for å inneholde informasjon om egenbahandlingplaner slik det brukes i prototype på Planer API fra NHN, med fokus på maskinlesbar oppfølging av observasjoner i plan.
