//
//  Assembler.swift
//  CoolMix
//
//  Created by Евгений Коузов on 09.07.2021.
//

import SwiftUI

final class Assembler {
    
    func mainView(router: Router) -> some View {
        let vm = MainViewViewModel(router: router)
        let view = MainView(vm: vm)
        return view
    }
    
    func detailView(router: Router, text: String) -> some View {
        let vm = DetailViewViewModel(router: router, text: text)
        let view = DetailView(vm: vm)
        return view
    }
}
