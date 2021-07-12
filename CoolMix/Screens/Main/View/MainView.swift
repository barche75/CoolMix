//
//  Main.swift
//  CoolMix
//
//  Created by Евгений Коузов on 09.07.2021.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var vm: MainViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    vm.next()
                } label: {
                    Text("next")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(y: -1)
                }
                .frame(width: 80, height: 30)
                .background(Color.green)
                .clipShape(Capsule())
            }
            .padding(.bottom, 30)
            HStack {
                Text("\(vm.title)")
                    .font(.largeTitle)
                Spacer()
            }
            .padding(.bottom, 32)
            Text("CoolMix")
            TextField("please enter some text", text: $vm.textToTransfer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top, 60)
            Spacer()
        }
        .padding()
        .onAppear {
            vm.resetTitle()
        }
    }
}
