Profile:     PlanerHackingV2ZoneCondition
Id:          planer-hacking-v2-zone-condition
Parent:      Condition
Title:       "Sonebetingelse i plan (v2)"
Description: "Condition-profil for sonegrenser i pasientens plan (v2), med nivå (grønn/gul/rød) og terskelbeskrivelse. Anbefalt tiltak beskrives i den tilhørende CarePlan sin activity, ikke her."
* ^status = #draft
* ^date = "2026-09-11"
* ^publisher = "HL7 Norge"

* subject 1..1
* subject only Reference(PlanerHackingPatient)
* clinicalStatus 1..1 MS
* code 1..1 MS
* code.text 1..1
* severity 1..1 MS
* severity.coding 1..* MS
* severity.coding ^slicing.discriminator[0].type = #pattern
* severity.coding ^slicing.discriminator[0].path = "system"
* severity.coding ^slicing.rules = #open
* severity.coding contains zoneSystem 1..1 MS
* severity.coding[zoneSystem].system 1..1
* severity.coding[zoneSystem].system = $planer-hacking-observation-severity-zone-cs
* severity.coding[zoneSystem].code from $planer-hacking-observation-severity-zone-vs (required)
* severity.coding[zoneSystem].code 1..1

Instance: ZoneCondition-Green-Oddfrid-V2
InstanceOf: PlanerHackingV2ZoneCondition
Description: "Grønn sone for Oddfrid (v2)"
* clinicalStatus.coding[0].system = $condition-clinical
* clinicalStatus.coding[0].code = #active
* subject = Reference(Pasient-1)
* severity.coding[zoneSystem].system = $planer-hacking-observation-severity-zone-cs
* severity.coding[zoneSystem].code = #green
* code.text = "Peak flow over 80 prosent"

Instance: ZoneCondition-Yellow-Oddfrid-V2
InstanceOf: PlanerHackingV2ZoneCondition
Description: "Gul sone for Oddfrid (v2)"
* clinicalStatus.coding[0].system = $condition-clinical
* clinicalStatus.coding[0].code = #active
* subject = Reference(Pasient-1)
* severity.coding[zoneSystem].system = $planer-hacking-observation-severity-zone-cs
* severity.coding[zoneSystem].code = #yellow
* code.text = "Peak flow mellom 50 og 80 prosent"

Instance: ZoneCondition-Red-Oddfrid-V2
InstanceOf: PlanerHackingV2ZoneCondition
Description: "Rød sone for Oddfrid (v2)"
* clinicalStatus.coding[0].system = $condition-clinical
* clinicalStatus.coding[0].code = #active
* subject = Reference(Pasient-1)
* severity.coding[zoneSystem].system = $planer-hacking-observation-severity-zone-cs
* severity.coding[zoneSystem].code = #red
* code.text = "Peak flow under 50 prosent"
