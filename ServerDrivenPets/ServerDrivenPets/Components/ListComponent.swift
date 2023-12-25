//
//  ListComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation
import SwiftUI

struct ListComponent: UIComponent {
  let uiModel: ListUIModel
  let id = UUID()
  func render() -> AnyView {
    ForEach(uiModel.rows, id: \.id) { row in
      Navigator.perform(action: uiModel.action, payload: row) {
        RowComponent(uiModel: row).render().toAnyView()
      }
    }.toAnyView()
  }
}
