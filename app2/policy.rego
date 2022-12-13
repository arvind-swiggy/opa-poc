package oparules.app2

import future.keywords.if

import data.oparules.core.mpMatches
import data.oparules.core.blMatches
import data.oparules.core.cityMatches
import data.oparules.core.personaMatches

default allow := false

allow if {

    # User ABAC rules
    mpMatches("XYZ")
    blMatches("ABC")

    cityMatches(input.cityId)
    personaMatches(["admin", "d"])

    # Resource rules
    input.method == "GET"
    glob.match("v1/order/*/getOrderId", [], input.path)

}
