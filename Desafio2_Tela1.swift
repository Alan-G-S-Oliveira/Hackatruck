//
//  Desafio2_Tela1.swift
//  Aula02
//
//  Created by Turma02-1 on 26/08/24.
//

import SwiftUI

struct Desafio2_Tela1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.darkGray).ignoresSafeArea()
                VStack {
                    Image(.image2).resizable().aspectRatio(contentMode: .fit).colorMultiply(.black).colorInvert().padding()
                    Spacer()
                    NavigationLink(destination: Desafio2_Tela2()) {
                        Text("Modo 1").padding().background(.pink)
                    }.foregroundColor(.white)
                    NavigationLink(destination: Desafio2_Tela3()) {
                        Text("Modo 2").padding().background(.pink)
                    }.foregroundColor(.white)
                    NavigationLink(destination: Desafio2_Tela4()) {
                        Text("Modo 3").padding().background(.pink)
                    }.foregroundColor(.white)
                    Spacer()
                }.padding()
            }
        }
    }
}

#Preview {
    Desafio2_Tela1()
}
