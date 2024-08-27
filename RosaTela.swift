//
//  RosaTela.swift
//  Aula02
//
//  Created by Turma02-1 on 26/08/24.
//

import SwiftUI

struct RosaTela: View {
    var body: some View {
        ZStack {
            Color.colorRosa.ignoresSafeArea(edges: .top)
            Circle().aspectRatio(contentMode: .fit).padding()
            Image(systemName: "paintbrush").resizable().aspectRatio(contentMode: .fit).foregroundColor(.colorRosa).padding().padding().padding().padding()
        }
    }
}

#Preview {
    RosaTela()
}
