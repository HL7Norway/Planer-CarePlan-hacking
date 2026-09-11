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
* addresses MS
* addresses only Reference(MalZoneCondition)
* addresses ^short = "Tilstander planen adresserer, inkludert sonebetingelser med observasjonsområder og tiltak"
* goal MS
* supportingInfo MS
* supportingInfo only Reference(MalObservationBlood or Observation)
* activity.outcomeReference only Reference(MalObservationBlood or Observation)
* note MS
* note ^short = "Fritekst, for eksempel personlige mål eller supplerende planinformasjon"

Instance: CarePlan-Oddfrid-Zones
InstanceOf: MalCarePlan
Description: "Eksempelplan for Oddfrid med sone-definisjoner representert i CarePlan.addresses"
* status = #active
* intent = #plan
* title = "Plan for Oddfrid"
* description = "Oddfrid ønsker å kunna gå turar med barnebarna igjen."
* subject = Reference(Pasient-1)
* addresses[+] = Reference(ZoneCondition-Green-Oddfrid)
* addresses[+] = Reference(ZoneCondition-Yellow-Oddfrid)
* addresses[+] = Reference(ZoneCondition-Red-Oddfrid)
