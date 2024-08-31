//
//  ContentView.swift
//  API
//
//  Created by Turma02-1 on 30/08/24.
//

import SwiftUI

struct SheetView: View {
    @Binding var user: User?
    var body: some View {
        VStack {
            Text("\(user!.name)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            Text("Mora na rua \(user!.address.street) em \(user!.address.city).")
            Text("Trabalha na empresa \(user!.company.name).")
        }
    }
}

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var sheet = false
    @State var aux: User?
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("Users").font(.title).bold().frame(width: 400).background(.green)
                ScrollView {
                    VStack {
                        ForEach(viewModel.users) {user in
                            Button {
                                aux = user
                                sheet.toggle()

                            } label : {
                                ZStack {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(.purple)
                                    Text(user.name).foregroundColor(.white).padding()
                                }
                            }
                        }
                    }
                    .sheet(isPresented: $sheet) {
                            SheetView(user: $aux)
                    }
                }.onAppear() {
                    viewModel.fetch()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
