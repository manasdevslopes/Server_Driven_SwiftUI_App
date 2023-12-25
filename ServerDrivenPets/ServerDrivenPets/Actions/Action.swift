//
//  Action.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation

enum ActionType: String, Decodable {
  case sheet
}

struct Action: Decodable {
  let type: ActionType
  let destination: Route
}
