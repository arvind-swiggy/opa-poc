package oparules.core


personaMatches(personas) {
  allowedPersonas := {x | x := personas[_]}
  inputPersonas := {y | y := data.userContext.personas[_]}
  existingPersonas := allowedPersonas & inputPersonas
  count(existingPersonas) > 0
}

cityMatches(city_id_field) {
	data.userContext.cityId == city_id_field
}

mpMatches(mp) {
	data.userContext.MP == mp
}

blMatches(bl) {
	data.userContext.BL == bl
}

