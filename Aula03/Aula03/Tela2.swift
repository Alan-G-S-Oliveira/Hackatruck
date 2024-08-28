//
//  Tela2.swift
//  Aula03
//
//  Created by Turma02-1 on 27/08/24.
//

import SwiftUI

struct Tela2: View {
    var musica: Song
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Spacer()
                AsyncImage(url: URL(string: musica.capa)) { imagem in
                    imagem.resizable().scaledToFit().frame(width: 250)
                } placeholder: {
                    ProgressView()
                }
                Text(musica.name).font(.title).bold().foregroundColor(.white)
                Text(musica.artist).foregroundColor(.white).padding(.bottom)
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "shuffle").resizable().aspectRatio(contentMode: .fit).colorInvert().padding()
                    Spacer()
                    Image(systemName: "backward.end.fill").resizable().aspectRatio(contentMode: .fit).colorInvert().padding()
                    Spacer()
                    Image(systemName: "play.fill").resizable().aspectRatio(contentMode: .fit).colorInvert().padding()
                    Spacer()
                    Image(systemName: "forward.end.fill").resizable().aspectRatio(contentMode: .fit).colorInvert().padding()
                    Spacer()
                    Image(systemName: "repeat").resizable().aspectRatio(contentMode: .fit).colorInvert().padding()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Tela2(musica: Song(id: 0, name: "teste", artist: "teste", capa: "teste"))
}
