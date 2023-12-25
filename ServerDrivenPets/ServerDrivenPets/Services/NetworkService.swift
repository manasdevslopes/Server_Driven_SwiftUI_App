//
//  NetworkService.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import Foundation

protocol NetworkService {
  func load(_ resourceName: String) async throws -> ScreenModal
}
