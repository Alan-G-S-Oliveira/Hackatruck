//
//  ContentView.swift
//  Aula02
//
//  Created by Turma02-1 on 23/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RosaTela().tabItem { Label("Rosa", systemImage: "paintbrush.fill")
            }
            AzulTela().tabItem { Label("Azul", systemImage: "paintbrush.pointed.fill")
            }
            CinzaTela().tabItem { Label("Cinza", systemImage: "paintpalette.fill")
            }
            ListaTela().tabItem { Label("Lista", systemImage: "list.bullet") }
        }
    }
}

#Preview {
    ContentView()
}
