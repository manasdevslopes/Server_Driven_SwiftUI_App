//
//  RowComponent.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation
import SwiftUI

struct RowComponent: UIComponent {
  let uiModel: RowUIModel
  let id = UUID()
  
  func render() -> AnyView {
    HStack {
      if let imageUrl = uiModel.imageUrl {
        AsyncImage(url: imageUrl) { image in
          image.resizable()
            .frame(width: 100, height: 100)
        } placeholder: {
          ProgressView()
        }.toAnyView()
      }
      VStack(alignment: .leading) {
        Text(uiModel.title)
        Text(uiModel.subTitle ?? "").opacity(0.4)
        Text(uiModel.description ?? "")
      }
    }.padding().toAnyView()
  }
}
