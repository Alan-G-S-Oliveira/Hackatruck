//
//  ContentView.swift
//  Aula03
//
//  Created by Turma02-1 on 27/08/24.
//

import SwiftUI

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    var songs = [
        Song(id: 1, name: "You Give Me A Felling", artist: "Vintage Culture, James Hype", capa: "https://i.scdn.co/image/ab67616d00001e020dc520e09dbd8fd12fab4f6f"),
        Song(id: 2, name: "Pompeii - Audien Remix", artist: "Bastille, Audien", capa: "https://i.scdn.co/image/ab67616d0000b27380c23aba3e018f5463bdf191"),
        Song(id: 3, name: "I Need Your Love (feat. Ellie Gouding)", artist: "Calvin Harris, Ellie Gouding", capa: "https://cdns-images.dzcdn.net/images/cover/3cd154b7ee332e7fb0dc3e8bd4085f6b/1900x1900-000000-80-0-0.jpg"),
        Song(id: 4, name: "Weak", artist: "Vintage Culture, Maverick Sabre, Tom Breu", capa: "https://i.scdn.co/image/ab67616d0000b273fb6391b7f42e2c83a75e9970"),
        Song(id: 5, name: "Cinema (feat. Gary Go) - Skrillex Remix", artist: "Benny Benassi, Gary Go, Skrillex", capa: "https://i.scdn.co/image/ab67616d0000b273896e9bacfe9dabb9ebb2f2d9"),
        Song(id: 6, name: "Summer", artist: "Calvin Harris", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/2/b/4/d/390101415187574.jpg"),
        Song(id: 7, name: "Fuego", artist: "Alok, Bhaskar", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/2/c/a/c/1129941628604653.jpg"),
        Song(id: 8, name: "Stereo Love - Original", artist: "Edward Maya, Vika Jigulina", capa: "https://i.scdn.co/image/ab67616d0000b273d629ba472bce9c426eb1fdc4"),
        Song(id: 9, name: "Jojo Sono Chino Sadame", artist: "Hiroaki Tommy Tominaga", capa: "https://static.wikia.nocookie.net/jjba/images/4/42/Sonochinosadame.jpg/revision/latest?cb=20230127225318&path-prefix=pt-br"),
        Song(id: 10, name: "Believer", artist: "Imagine Dragons", capa: "https://i1.sndcdn.com/artworks-000440019294-urbfxi-t500x500.jpg")]
    var body: some View {
        NavigationStack {
            ScrollView {
                AsyncImage(url: URL(string: "https://hackatruck.com.br/wp-content/uploads/2023/06/foto-001.png")) { imagem in
                    imagem.resizable().scaledToFill().frame(width: 250)
                } placeholder: {
                    ProgressView()
                }
                VStack(alignment: .leading) {
                    Text("HackaFM").font(.title).bold().foregroundColor(.white)
                    HStack {
                        AsyncImage(url: URL(string: "https://hackatruck.com.br/wp-content/uploads/2023/06/foto-001.png")) { imagem in
                            imagem.resizable().scaledToFill().frame(width: 32)
                        } placeholder: {
                            ProgressView()
                        }
                        Text("HackaSong").foregroundColor(.white)
                    }.padding()
                    ForEach(songs) {
                        e in HStack {
                            NavigationLink(destination: Tela2(musica: e)) {
                                AsyncImage(url: URL(string: e.capa)) { imagem in
                                    imagem.resizable().scaledToFill().frame(width: 64)
                                } placeholder: {
                                    ProgressView()
                                }
                                VStack(alignment: .leading){
                                    Text(e.name).foregroundColor(.white)
                                    Text(e.artist).foregroundColor(.white).font(.caption)
                                }
                            }
                            Spacer()
                            Image(systemName: "ellipsis").colorInvert()
                        }.padding(.horizontal)
                    }
                    Text("Sugestões").font(.title).bold().foregroundColor(.white)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(songs) { e in
                                VStack {
                                    AsyncImage(url: URL(string: e.capa)) { imagem in
                                        imagem.resizable().scaledToFit().frame(width: 300)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    Text(e.name).foregroundColor(.white)
                                }
                            }.padding()
                        }
                    }
                }.padding()
            }.background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea())
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
