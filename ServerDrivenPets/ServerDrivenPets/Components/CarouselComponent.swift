//
//  CarouselComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
  let uiModel: CarouselUIModel
  let id = UUID()
  
  func render() -> AnyView {
    CarouselView(uiModel: uiModel).toAnyView()
  }
}
