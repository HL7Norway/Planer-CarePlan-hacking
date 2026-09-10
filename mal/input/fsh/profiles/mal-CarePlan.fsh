Profile:     MalCarePlan
Id:          mal-careplan
Parent:      CarePlan
Title:       "Plan"
Description: "CarePlan-profil inspirert av xShare (forretning + applikasjon), tilpasset Planer API-behov for planinnhold."
* ^status = #draft
* ^date = "2026-09-10"
* ^publisher = "HL7 Norge"

* status MS
* intent = #plan
* title MS
* description MS
* period MS
* subject 1..1
* subject only Reference(MalPatient)
* extension contains MalCarePlanPatientZone named patientZone 0..1 MS
* extension[patientZone] ^short = "Pasientens vurderingssone i planen (grønn/gul/rød)"
* goal MS
* supportingInfo MS
* supportingInfo only Reference(MalObservationBlood or Observation)
* activity.outcomeReference only Reference(MalObservationBlood or Observation)
* note MS
* note ^short = "Fritekstbeskrivelse av pasientens sonevurdering og kontekst"
