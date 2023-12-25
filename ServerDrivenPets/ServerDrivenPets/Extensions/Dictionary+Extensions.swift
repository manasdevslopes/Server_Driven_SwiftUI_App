//
//  Dictionary+Extensions.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import SwiftUI

extension Dictionary {
  func decode<T: Decodable>() -> T? {
    guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else { return nil }
    return try? JSONDecoder().decode(T.self, from: data)
  }
}
