package oparules.app2

import future.keywords.if

import oparules.core.mpMatches
import oparules.core.blMatches
import oparules.core.cityMatches
import oparules.core.personaMatches

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
