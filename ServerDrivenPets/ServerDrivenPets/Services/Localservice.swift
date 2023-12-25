//
//  Localservice.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import Foundation

class Localservice: NetworkService {
  func load(_ resourceName: String) async throws -> ScreenModal {
    guard let path = Bundle.main.path(forResource: resourceName, ofType: "json") else {
      fatalError("Resource file \(resourceName) not found!")
    }
    let data = try Data(contentsOf: URL(filePath: path))
    let screenModal = try JSONDecoder().decode(ScreenModal.self, from: data)
    return screenModal
  }
}
