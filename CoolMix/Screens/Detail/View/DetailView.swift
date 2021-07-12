//
//  DetailView.swift
//  CoolMix
//
//  Created by Евгений Коузов on 09.07.2021.
//

import SwiftUI

struct DetailView: View {
    
    @StateObject var vm: DetailViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    vm.back()
                } label: {
                    Text("back")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(y: -1)
                }
                .frame(width: 80, height: 30)
                .background(Color.red)
                .clipShape(Capsule())
                Spacer()
            }
            Spacer()
            Text(vm.text)
            Spacer()
        }
        .padding()
    }
}
