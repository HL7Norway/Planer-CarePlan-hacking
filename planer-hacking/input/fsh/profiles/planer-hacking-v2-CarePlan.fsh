Profile:     PlanerHackingV2CarePlan
Id:          planer-hacking-v2-careplan
Parent:      CarePlan
Title:       "Plan (v2, overordnet)"
Description: "Overordnet CarePlan (v2) som samler tre sone-spesifikke CarePlaner (grønn/gul/rød). Sonene knyttes til denne planen via CarePlan.partOf på hver sone-plan, se PlanerHackingV2ZoneCarePlan."
* ^status = #draft
* ^date = "2026-09-11"
* ^publisher = "HL7 Norge"

* status MS
* intent = #plan
* title MS
* description MS
* period MS
* subject 1..1
* subject only Reference(PlanerHackingPatient)
* note MS
* note ^short = "Fritekst, for eksempel personlige mål eller supplerende planinformasjon"

Instance: CarePlan-Oddfrid-Zones-V2
InstanceOf: PlanerHackingV2CarePlan
Description: "Overordnet eksempelplan for Oddfrid (v2), med tre sone-CarePlaner som inneholder tiltak"
* status = #active
* intent = #plan
* title = "Plan for Oddfrid (v2)"
* description = "Oddfrid ønsker å kunna gå turar med barnebarna igjen."
* subject = Reference(Pasient-1)
