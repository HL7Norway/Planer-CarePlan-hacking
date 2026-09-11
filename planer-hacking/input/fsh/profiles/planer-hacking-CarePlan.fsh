Profile:     PlanerHackingCarePlan
Id:          planer-hacking-careplan
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
* subject only Reference(PlanerHackingPatient)
* addresses 1..* MS
* addresses only Reference(PlanerHackingZoneCondition)
* addresses ^short = "Sonebetingelser for planen representeres som PlanerHackingZoneCondition"
* goal MS
* supportingInfo MS
* note MS
* note ^short = "Fritekst, for eksempel personlige mål eller supplerende planinformasjon"

Instance: CarePlan-Oddfrid-Zones
InstanceOf: PlanerHackingCarePlan
Description: "Eksempelplan for Oddfrid med sone-definisjoner representert i CarePlan.addresses"
* status = #active
* intent = #plan
* title = "Plan for Oddfrid"
* description = "Oddfrid ønsker å kunna gå turar med barnebarna igjen."
* subject = Reference(Pasient-1)
* addresses[+] = Reference(ZoneCondition-Green-Oddfrid)
* addresses[+] = Reference(ZoneCondition-Yellow-Oddfrid)
* addresses[+] = Reference(ZoneCondition-Red-Oddfrid)
