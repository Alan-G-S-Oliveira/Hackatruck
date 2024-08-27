//
//  ListaTela.swift
//  Aula02
//
//  Created by Turma02-1 on 26/08/24.
//

import SwiftUI

struct ListaTela: View {
    var body: some View {
        VStack {
            NavigationView {
                List{
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush.fill")
                    }
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush.pointed.fill")
                    }
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintpalette.fill")
                    }
                }.navigationTitle("List")
            }
        }
    }
}

#Preview {
    ListaTela()
}
