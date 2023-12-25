//
//  PetDetailViewModel.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 25/12/23.
//

import Foundation

@MainActor
class PetDetailViewModel: ObservableObject {
  private var service: NetworkService
  init(service: NetworkService) {
    self.service = service
  }
  
  @Published var components: [UIComponent] = []
  
  func load(petId: Int) async {
    do {
      let screenModal = try await service.load(Constants.ScreenResources.petDetail(petId: petId))
      self.components = try screenModal.buildComponents()
    } catch {
      print(error)
    }
  }
}
