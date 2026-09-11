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
* clinicalStatus 1..1 MS
* code 1..1 MS
* severity 1..1 MS
* severity.coding 1..* MS
* severity.coding ^slicing.discriminator[0].type = #value
* severity.coding ^slicing.discriminator[0].path = "system"
* severity.coding ^slicing.rules = #open
* severity.coding contains zoneSystem 1..1 MS
* severity.coding[zoneSystem].system = $mal-observation-severity-zone-cs
* severity.coding[zoneSystem].code from $mal-observation-severity-zone-vs (required)
* severity.coding[zoneSystem].code 1..1
* note 1..1 MS
* note.text 1..1
* note ^short = "Anbefalt tiltak for sonen"

Instance: ZoneCondition-Green-Oddfrid
InstanceOf: MalZoneCondition
Description: "Grønn sone for Oddfrid"
* clinicalStatus.coding.system = $condition-clinical
* clinicalStatus.coding.code = #active
* subject = Reference(Pasient-1)
* severity.coding[zoneSystem].system = $mal-observation-severity-zone-cs
* severity.coding[zoneSystem].code = #green
* code.text = "Peak flow over 80 prosent"
* note.text = "Continue current treatment"

Instance: ZoneCondition-Yellow-Oddfrid
InstanceOf: MalZoneCondition
Description: "Gul sone for Oddfrid"
* clinicalStatus.coding.system = $condition-clinical
* clinicalStatus.coding.code = #active
* subject = Reference(Pasient-1)
* severity.coding[zoneSystem].system = $mal-observation-severity-zone-cs
* severity.coding[zoneSystem].code = #yellow
* code.text = "Peak flow mellom 50 og 80 prosent"
* note.text = "Increase medication dosage and contact GP within 24 hours"

Instance: ZoneCondition-Red-Oddfrid
InstanceOf: MalZoneCondition
Description: "Rød sone for Oddfrid"
* clinicalStatus.coding.system = $condition-clinical
* clinicalStatus.coding.code = #active
* subject = Reference(Pasient-1)
* severity.coding[zoneSystem].system = $mal-observation-severity-zone-cs
* severity.coding[zoneSystem].code = #red
* code.text = "Peak flow under 50 prosent"
* note.text = "Call emergency services immediately"
