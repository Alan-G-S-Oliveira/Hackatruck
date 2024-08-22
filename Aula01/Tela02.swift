//
//  Tela02.swift
//  Aula01
//
//  Created by Turma02-1 on 21/08/24.
//

import SwiftUI

struct Tela02: View {
    var body: some View {
        
        HStack {
            Image(.images).resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Hackatruck").foregroundColor(.red)
                Text("77 Universidades").foregroundColor(.blue)
                Text("5 regiões do Brasil").foregroundColor(.yellow)
            }
        }
        
    }
}

#Preview {
    Tela02()
}
