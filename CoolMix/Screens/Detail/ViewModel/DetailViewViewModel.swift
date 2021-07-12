//
//  DetailViewViewModel.swift
//  CoolMix
//
//  Created by Евгений Коузов on 09.07.2021.
//

import Foundation

class DetailViewViewModel: ObservableObject {
    
    @Published var text = ""
    
    private let router: Router
    
    init(router: Router, text: String) {
        self.router = router
        self.text = text
    }
    
    func back() {
        router.back()
    }
}
