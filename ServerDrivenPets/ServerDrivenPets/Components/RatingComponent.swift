//
//  RatingComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation
import SwiftUI

struct RatingComponent: UIComponent {
  let uiModel: RatingRowUIModel
  let id = UUID()
  func render() -> AnyView {
    RatingView(rating: .constant(uiModel.rating)).toAnyView()
  }
}
