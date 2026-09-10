Extension:    MalCarePlanPatientZone
Id:           mal-careplan-patient-zone
Title:        "Pasientens vurderingssone i plan"
Description:  "Angir pasientens vurderingssone (grønn/gul/rød) i CarePlan med valgfri beskrivende tekst."
* ^status = #draft
* ^date = "2026-09-10"
* ^publisher = "HL7 Norge"
* value[x] only CodeableConcept
* valueCodeableConcept from $mal-observation-severity-zone-vs (required)
