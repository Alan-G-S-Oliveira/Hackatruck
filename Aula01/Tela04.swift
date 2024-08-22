//
//  Tela04.swift
//  Aula01
//
//  Created by Turma02-1 on 22/08/24.
//

import SwiftUI

struct Tela04: View {
    @State var username: String = ""
    @State var botaoClicado: Bool = false
    var body: some View {
        ZStack {
            Image(.images3).resizable().frame(width: 850, height: 900).opacity(0.15)
            VStack {
                Text("Bem vindo, " + String(username)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                TextField("", text: $username).frame(width: 100, height: 15)
                Spacer()
            }.padding(60)
            VStack {
                Spacer()
                Image(.images5).resizable().frame(width: 225, height: 125).padding(50)
                Image(.images4).resizable().frame(width:225, height: 125).padding(-50)
                Spacer()
                Button(action: {botaoClicado = true}) {
                    Text("Entrar")
                }.alert(isPresented: $botaoClicado) {
                    Alert(title: Text("ALERTA!"), message: Text("Você irá iniciar o desafio de aula agora"), dismissButton: .default(Text("Vamos lá!!")))
                }.padding(60)
            }.padding()
            
        }
    }
}

#Preview {
    Tela04()
}
