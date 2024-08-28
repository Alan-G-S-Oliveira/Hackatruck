//
//  InicioTela.swift
//  Mandacaru.DEV
//
//  Created by Turma02-1 on 28/08/24.
//

import SwiftUI

struct InicioTela: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo).ignoresSafeArea()
                VStack (alignment: .leading){
                    Spacer()
                    HStack {
                        AsyncImage(url: URL(string: "https://i.redd.it/mscjveq00ymb1.jpg")) { imagem in
                            imagem.resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        } placeholder: {
                            ProgressView()
                        }
                        VStack{
                            Text("Olá Chopper").foregroundColor(.white).font(.title2).bold()
                            Text("Bem vindo de volta").foregroundColor(.white).font(.caption)
                        }
                        Spacer()
                    }
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(.componentes).frame(height: 150).padding()
                    HStack {
                        Spacer()
                        VStack {
                            Circle().foregroundColor(.white)
                            Text("Cartões").foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Circle().foregroundColor(.white)
                            Text("Registrar...").foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Circle().foregroundColor(.white).zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            Text("Calcular...").foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Circle().foregroundColor(.white)
                            Text("Mais").foregroundColor(.white)
                        }
                        Spacer()
                    }
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(.componentes).frame(height: 225).padding()
                    Spacer()
                }.padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
