//
//  ContentView.swift
//  Mandacaru.DEV
//
//  Created by Turma02-1 on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InicioTela().tabItem{Label("Início", systemImage: "house")}
            InicioTela().tabItem{Label("Estatísticas", systemImage: "chart.xyaxis.line")}
            InicioTela().tabItem{Label("Conselheira", systemImage: "sparkles")}
            InicioTela().tabItem{Label("Opções", systemImage: "gearshape.fill")}
        }
    }
}

#Preview {
    ContentView()
}
