//
//  AzulTela.swift
//  Aula02
//
//  Created by Turma02-1 on 26/08/24.
//

import SwiftUI

struct AzulTela: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(edges: .top)
            Circle().aspectRatio(contentMode: .fit).padding()
            Image(systemName: "paintbrush.pointed").resizable().aspectRatio(contentMode: .fit).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding().padding().padding().padding()
        }
    }
}

#Preview {
    AzulTela()
}
