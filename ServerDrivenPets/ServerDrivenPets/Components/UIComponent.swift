//
//  UIComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import Foundation
import SwiftUI

protocol UIComponent {
  var id: UUID { get }
  func render() -> AnyView
}

