//
//  TextRowComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation
import SwiftUI

struct TextRowComponent: UIComponent {
  let uiModel: TextRowUIModel
  let id = UUID()
  
  func render() -> AnyView {
    Text(uiModel.text).padding().toAnyView()
  }
}
