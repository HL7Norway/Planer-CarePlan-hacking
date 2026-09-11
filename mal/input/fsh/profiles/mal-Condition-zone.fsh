Profile:     MalZoneCondition
Id:          mal-zone-condition
Parent:      Condition
Title:       "Sonebetingelse i plan"
Description: "Condition-profil for sonegrenser i pasientens plan, med nivå (grønn/gul/rød), terskelbeskrivelse og anbefalt tiltak."
* ^status = #draft
* ^date = "2026-09-11"
* ^publisher = "HL7 Norge"

* subject 1..1
* subject only Reference(MalPatient)
* code 1..1 MS
* severity 1..1 MS
* severity from $mal-observation-severity-zone-vs (required)
* note 1..1 MS
* note ^short = "Anbefalt tiltak for sonen"

Instance: ZoneCondition-Green-Oddfrid
InstanceOf: MalZoneCondition
Description: "Grønn sone for Oddfrid"
* clinicalStatus.coding.system = $condition-clinical
* clinicalStatus.coding.code = #active
* subject = Reference(Pasient-1)
* severity.coding.system = $mal-observation-severity-zone-cs
* severity.coding.code = #green
* code.text = "Peak flow > 80%"
* note.text = "Continue current treatment"

Instance: ZoneCondition-Yellow-Oddfrid
InstanceOf: MalZoneCondition
Description: "Gul sone for Oddfrid"
* clinicalStatus.coding.system = $condition-clinical
* clinicalStatus.coding.code = #active
* subject = Reference(Pasient-1)
* severity.coding.system = $mal-observation-severity-zone-cs
* severity.coding.code = #yellow
* code.text = "Peak flow 50-80%"
* note.text = "Increase medication dosage and contact GP within 24 hours"

Instance: ZoneCondition-Red-Oddfrid
InstanceOf: MalZoneCondition
Description: "Rød sone for Oddfrid"
* clinicalStatus.coding.system = $condition-clinical
* clinicalStatus.coding.code = #active
* subject = Reference(Pasient-1)
* severity.coding.system = $mal-observation-severity-zone-cs
* severity.coding.code = #red
* code.text = "Peak flow < 50%"
* note.text = "Call emergency services immediately"
