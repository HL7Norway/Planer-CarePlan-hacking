Profile:     PlanerHackingV2ZoneCarePlan
Id:          planer-hacking-v2-zone-careplan
Parent:      CarePlan
Title:       "Sone-plan med tiltak (v2)"
Description: "CarePlan-profil (v2) for én sone. Adresserer sonens Condition og beskriver det anbefalte tiltaket for sonen i CarePlan.activity.detail.description, i stedet for i Condition.note slik som i v1-modellen."
* ^status = #draft
* ^date = "2026-09-11"
* ^publisher = "HL7 Norge"

* status MS
* intent = #plan
* title MS
* subject 1..1
* subject only Reference(PlanerHackingPatient)
* partOf 1..1 MS
* partOf only Reference(PlanerHackingV2CarePlan)
* partOf ^short = "Den overordnede planen denne sone-planen er en del av"
* addresses 1..1 MS
* addresses only Reference(PlanerHackingV2ZoneCondition)
* addresses ^short = "Sonebetingelsen (Condition) denne sone-planen gjelder for"
* activity 1..1 MS
* activity.detail 1..1 MS
* activity.detail.status MS
* activity.detail.description 1..1 MS
* activity.detail.description ^short = "Anbefalt/nødvendig tiltak for sonen"

Instance: CarePlan-Oddfrid-Green-V2
InstanceOf: PlanerHackingV2ZoneCarePlan
Description: "Sone-plan (grønn) for Oddfrid med tiltak i activity.detail.description"
* status = #active
* intent = #plan
* title = "Tiltak - grønn sone"
* subject = Reference(Pasient-1)
* partOf = Reference(CarePlan-Oddfrid-Zones-V2)
* addresses = Reference(ZoneCondition-Green-Oddfrid-V2)
* activity.detail.status = #in-progress
* activity.detail.description = "Fortsett nåværende behandling"

Instance: CarePlan-Oddfrid-Yellow-V2
InstanceOf: PlanerHackingV2ZoneCarePlan
Description: "Sone-plan (gul) for Oddfrid med tiltak i activity.detail.description"
* status = #active
* intent = #plan
* title = "Tiltak - gul sone"
* subject = Reference(Pasient-1)
* partOf = Reference(CarePlan-Oddfrid-Zones-V2)
* addresses = Reference(ZoneCondition-Yellow-Oddfrid-V2)
* activity.detail.status = #not-started
* activity.detail.description = "Øk medikamentdose og kontakt fastlege innen 24 timer"

Instance: CarePlan-Oddfrid-Red-V2
InstanceOf: PlanerHackingV2ZoneCarePlan
Description: "Sone-plan (rød) for Oddfrid med tiltak i activity.detail.description"
* status = #active
* intent = #plan
* title = "Tiltak - rød sone"
* subject = Reference(Pasient-1)
* partOf = Reference(CarePlan-Oddfrid-Zones-V2)
* addresses = Reference(ZoneCondition-Red-Oddfrid-V2)
* activity.detail.status = #not-started
* activity.detail.description = "Ring nødetatene umiddelbart"
