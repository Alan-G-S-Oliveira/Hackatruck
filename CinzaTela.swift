//
//  CinzaTela.swift
//  Aula02
//
//  Created by Turma02-1 on 26/08/24.
//

import SwiftUI

struct CinzaTela: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea(edges: .top)
            Circle().aspectRatio(contentMode: .fit).padding()
            Image(systemName: "paintpalette").resizable().aspectRatio(contentMode: .fit).foregroundColor(.gray).padding().padding().padding().padding()
        }
    }
}

#Preview {
    CinzaTela()
}
