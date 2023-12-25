//
//  Webservice.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import Foundation

enum NetworkError: Error {
  case invalidUrl
  case invalidServerResponse
}

class Webservice: NetworkService {
  func load(_ resourceName: String) async throws -> ScreenModal {
    guard let url = Constants.ScreenResources.resource(for: resourceName) else { throw NetworkError.invalidUrl }
    let (data, response) = try await URLSession.shared.data(from: url)
    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else { throw NetworkError.invalidServerResponse }
    return try JSONDecoder().decode(ScreenModal.self, from: data)
  }  
}
