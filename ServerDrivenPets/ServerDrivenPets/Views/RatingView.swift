//
//  RatingView.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import SwiftUI

struct RatingView: View {
  @Binding var rating: Int?
  
  var body: some View {
    HStack {
      ForEach(1...5, id: \.self) { index in
        Image(systemName: self.starType(index: index))
          .foregroundColor(Color.orange)
      }
    }
  }
  
  private func starType(index: Int) -> String {
    if let rating = self.rating {
      return index <= rating ? "star.fill" : "star"
    } else {
      return "star"
    }
  }
}

struct RatingView_Previews: PreviewProvider {
  static var previews: some View {
    RatingView(rating: .constant(2))
  }
}
