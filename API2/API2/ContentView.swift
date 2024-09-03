//
//  ContentView.swift
//  API2
//
//  Created by Turma02-1 on 03/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).ignoresSafeArea()
            VStack {
                Text("Linguagens de programação").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                Spacer()
                ScrollView {
                    VStack {
                        ForEach(viewModel.linguagens, id: \._id) {linguagem in
                            Button {
                                
                            } label: {
                                VStack {
                                    AsyncImage(url: URL(string: linguagem.logo)) { imagem in
                                        imagem.resizable().scaledToFill().frame(width: 64)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    Text(linguagem.nome).foregroundColor(.black)
                                }
                            }
                        }
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
