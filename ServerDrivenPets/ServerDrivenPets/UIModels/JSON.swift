//
//  JSON.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import SwiftUI

// How to decode a Dictionary, if value is different, let's say [String: String], [String: Int], [String: Bool] & so on...
//let json = """
//{
//    "type": "featuredImage",
//    "rating": 4,
//    "isVisible": true
//}
//"""

//JSONDecoder().decode([String: Any], from: json.data(using: .utf8)!)
// won't work as Type 'Any' cannot conform to 'Decodable'

// We will create our own Custom Type to decode Dictionary with Different structure, [String: Any]

enum DecodingError: Error {
  case dataCurruptedError
}

struct JSON: Decodable {
  var value: Any
  
  // Custom Initialisation
  private struct CodingKeys: CodingKey {
    var stringValue: String
    init?(stringValue: String) {
      self.stringValue = stringValue
    }
    
    var intValue: Int?
    init?(intValue: Int) {
      self.stringValue = "\(intValue)"
      self.intValue = intValue
    }
  }
  
  init(from decoder: Decoder) throws {
    if let container = try? decoder.container(keyedBy: CodingKeys.self) {
      var result = [String: Any]()
      for key in container.allKeys {
        result[key.stringValue] = try container.decode(JSON.self, forKey: key).value
      }
      value = result
    } else if let container = try? decoder.singleValueContainer() {
      if let stringValue = try? container.decode(String.self) {
        value = stringValue
      } else if let intValue = try? container.decode(Int.self) {
        value = intValue
      } else if let boolValue = try? container.decode(Bool.self) {
        value = boolValue
      } else if let arrayValue = try? container.decode([JSON].self) {
        value = arrayValue.map { $0.value }
      } else {
        throw DecodingError.dataCurruptedError
      }
    } else {
      throw DecodingError.dataCurruptedError
    }
  }
}

//if let decoded = try? JSONDecoder().decode(JSON.self, from: json.data(using: .utf8)!).value {
//  print(decoded as! [String: Any])
//}

