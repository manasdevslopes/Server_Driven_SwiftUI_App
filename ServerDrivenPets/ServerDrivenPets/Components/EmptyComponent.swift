//
//  EmptyComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation
import SwiftUI

struct EmptyComponent: UIComponent {
  var id: UUID = UUID()
  
  func render() -> AnyView {
    EmptyView().toAnyView()
  }
}
