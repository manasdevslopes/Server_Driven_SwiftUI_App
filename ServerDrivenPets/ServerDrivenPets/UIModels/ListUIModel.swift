//
//  ListUIModel.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation

struct RowUIModel: Decodable {
  let id: Int
  let title: String
  let subTitle: String?
  let imageUrl: URL?
  let description: String?
}

struct ListUIModel: Decodable {
  let rows: [RowUIModel]
  let action: Action
}
