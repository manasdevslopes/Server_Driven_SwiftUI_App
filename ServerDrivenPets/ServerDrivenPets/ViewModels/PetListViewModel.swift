//
//  PetListViewModel.swift
//  ServerDrivenPets
//
//  Created by MANAS VIJAYWARGIYA on 23/12/23.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
  private var service: NetworkService
  init(service: NetworkService) {
    self.service = service
  }
  
  @Published var components: [UIComponent] = []
  
  func load() async {
    do {
      let screenModal = try await service.load(Constants.ScreenResources.petListing)
      self.components = try screenModal.buildComponents()
    } catch {
      print(error)
    }
  }
}
