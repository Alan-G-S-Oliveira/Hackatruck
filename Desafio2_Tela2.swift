//
//  Desafio2_Tela2.swift
//  Aula02
//
//  Created by Turma02-1 on 26/08/24.
//

import SwiftUI

struct Desafio2_Tela2: View {
    @State var nome: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.darkGray).ignoresSafeArea()
                VStack {
                    Text("Modo 2").font(.title)
                    Spacer()
                    VStack {
                        Text("")
                        TextField("", text: $nome)
                        Text("Bem vindo, " + nome).foregroundStyle(.white)
                        NavigationLink(destination: Desafio2_Tela5()) {
                            Text("Acessar Tela")
                        }.buttonStyle(.borderedProminent)
                        Text("")
                        Text("")
                    }.cornerRadius(25.0).background(.pink)
                    Spacer()
                }.padding().cornerRadius(25.0)
            }
        }
    }
}

#Preview {
    Desafio2_Tela2()
}
