//
//  CarouselUIModel.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation

struct CarouselRowUIModel: Decodable, Identifiable {
  let id = UUID()
  let petId: Int
  let imageUrl: URL
  
  private enum CodingKeys: String, CodingKey {
    case petId
    case imageUrl
  }
}

struct CarouselUIModel: Decodable {
  let items: [CarouselRowUIModel]
  let action: Action
}
