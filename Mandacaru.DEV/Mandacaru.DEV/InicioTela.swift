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
                VStack {
                    HStack {
                        AsyncImage(url: URL(string: "https://i.redd.it/mscjveq00ymb1.jpg"))
                    }
                }
            }
        }
    }
}

#Preview {
    InicioTela()
}
