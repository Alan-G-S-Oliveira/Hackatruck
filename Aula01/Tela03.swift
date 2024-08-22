//
//  Tela03.swift
//  Aula01
//
//  Created by Turma02-1 on 21/08/24.
//

import SwiftUI

struct Tela03: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("username").font(.title).padding()
            HStack {
                Image(.images).resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 150)

                VStack {
                    HStack {
                        VStack {
                            Text("8").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Posts").fontWeight(.light)
                        }
                        VStack {
                            Text("12K").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Seguidores").fontWeight(.light)
                        }
                        VStack {
                            Text("2K").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Seguindo").fontWeight(.light)
                        }
                    }
                    Text("Editar perfil").frame(width: 225, height: 30).background(.gray)
                }
            }
            VStack (alignment: .leading){
                Text("Nome Sobrenome").font(.title2)
                Text("sijdw wkdjue iswjdu sowduy")
            }.padding()
            HStack {
                Rectangle().frame(width: 30, height: 30).foregroundColor(.gray).padding()
                Spacer()
                Rectangle().frame(width: 30, height: 30).foregroundColor(.gray).padding()
                Spacer()
                Rectangle().frame(width: 30, height: 30).foregroundColor(.gray).padding()
            }.padding()
        }
        HStack {
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
        }
        HStack {
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
        }
        HStack {
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
            Rectangle().frame(width: 115, height: 115).foregroundColor(.gray)
            Spacer()
        }
        Spacer()
    }
}

#Preview {
    Tela03()
}
