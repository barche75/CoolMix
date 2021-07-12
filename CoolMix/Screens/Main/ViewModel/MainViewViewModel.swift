//
//  MainViewViewModel.swift
//  CoolMix
//
//  Created by Евгений Коузов on 09.07.2021.
//

import Foundation

class MainViewViewModel: ObservableObject {
    
    @Published var title = "Main screen"
    @Published var textToTransfer = ""
    
    private let router: Router
    
    init(router: Router) {
        self.router = router
        changeTitle()
    }
    
    func resetTitle() {
        textToTransfer = ""
    }
    
    private func changeTitle() {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 5) { [weak self] in
            self?.title = "SwiftUI + Navigation"
        }
    }
    
    func next() {
        router.showDetailView(with: textToTransfer)
    }
    
    func goBack() {
        router.back()
    }
}
