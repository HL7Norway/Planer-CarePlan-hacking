Profile:     MalObservationBlood
Id:          mal-observation-blodprove
Parent:      Observation
Title:       "Blodprøve"
Description: "Profil for vanlige blodprøver"
* ^status = #draft
* ^date = "2025-01-31"
* ^publisher = "HL7 Norge"

* subject only Reference(MalPatient) // Pasienten som blodprøven er tatt av
* effectiveDateTime MS // Dato og tid for blodprøve
* code MS // Kode for blodprøve 
* valueQuantity MS // Resultat av blodprøve - TEST
* interpretation MS // Vurderingssone (grønn/gul/rød)
* interpretation.coding ^slicing.discriminator[0].type = #value
* interpretation.coding ^slicing.discriminator[0].path = "system"
* interpretation.coding ^slicing.rules = #open
* interpretation.coding contains severityZone 0..1 MS
* interpretation.coding[severityZone].system = $mal-observation-severity-zone-cs
* interpretation.coding[severityZone].code from $mal-observation-severity-zone-vs (required)