//
//  ContentView.swift
//  Mapas
//
//  Created by Turma02-1 on 29/08/24.
//

import SwiftUI
import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var pais: Location
    
    var body: some View {
        VStack {
            Text(pais.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            AsyncImage(url: URL(string: pais.flag)) { imagem in
                imagem.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.padding()
            Text(pais.description)
            Spacer()
        }
    }
}

struct ContentView: View {
    @State private var mapa = MapCameraPosition.region(
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -15.8, longitude: -47.9), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    ))
    
    @State var atual = "Brasil"
    @State var sheet = false
    
    var locais = [
        Location(name: "Brasil",
                 coordinate: CLLocationCoordinate2D(latitude: -15.8, longitude: -47.9),
                 flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/250px-Flag_of_Brazil.svg.png",
                 description: "Brasil, oficialmente República Federativa do Brasil, é o maior país da América do Sul e da região da América Latina, sendo o quinto maior do mundo em área territorial (equivalente a 47,3% do território sul-americano), com 8 510 417,771 km², e o sétimo em população (com 203 milhões de habitantes, em agosto de 2022). É o único país na América onde se fala majoritariamente a língua portuguesa e o maior país lusófono do planeta, além de ser uma das nações mais multiculturais e etnicamente diversas, em decorrência da forte imigração oriunda de variados locais do mundo. Sua atual Constituição, promulgada em 1988, concebe o Brasil como uma república federativa presidencialista, formada pela união dos 26 estados, do Distrito Federal e dos 5 571 municípios."),
        Location(name: "Japão",
                 coordinate: CLLocationCoordinate2D(latitude: 35.76, longitude: 139.37),
                 flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/250px-Flag_of_Japan.svg.png",
                 description: "Japão é um país insular da Ásia Oriental. Localizado no Oceano Pacífico, a leste do Mar do Japão, da República Popular da China, da Coreia do Norte, da Coreia do Sul e da Rússia, estendendo-se do Mar de Okhotsk, no norte, ao Mar da China Oriental e Taiwan, ao sul. Os caracteres que compõem seu nome significam \"Origem do Sol\", razão pela qual o Japão é às vezes identificado como a \"Terra do Sol Nascente\"."),
        Location(name: "Uzbequistão",
                 coordinate: CLLocationCoordinate2D(latitude: 41.29, longitude: 69.27),
                 flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Flag_of_Uzbekistan.svg/250px-Flag_of_Uzbekistan.svg.png",
                 description: "O Uzbequistão ou Usbequistão, oficialmente República do Uzbequistão, é um país duplamente encravado localizado na Ásia Central , composto de doze províncias, uma república autônoma e a capital Tasquente. O Uzbequistão faz fronteira com o Cazaquistão ao norte, o Quirguistão a nordeste, o Tajiquistão a sudeste, o Afeganistão ao sul e o Turcomenistão a sudoeste."),
        Location(name: "Dinamarca",
                 coordinate: CLLocationCoordinate2D(latitude: 55.68, longitude: 12.58),
                 flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/250px-Flag_of_Denmark.svg.png",
                 description: "Dinamarca é um país nórdico na porção centro-sul do Norte da Europa. É a parte metropolitana e o constituinte mais populoso do Reino da Dinamarca, um Estado constitucionalmente unitário que inclui os territórios autônomos das Ilhas Faroé e da Gronelândia no Oceano Atlântico Norte. A Dinamarca metropolitana é o mais meridional dos países escandinavos, situando-se a sudoeste e sul da Suécia, ao sul da Noruega e ao norte da Alemanha, com a qual partilha uma curta fronteira.")
    ]
    
    var body: some View {
        ZStack {
            Map(position: $mapa) {
                ForEach(locais) {local in
                    Annotation(local.name, coordinate: local.coordinate) {
                        Button {
                            sheet.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6.125).foregroundColor(.white).frame(width: 32, height: 32)
                                Image(systemName: "signpost.right.fill").foregroundColor(.black)
                            }
                        }.sheet(isPresented: $sheet) {
                            SheetView(pais: local)
                        }
                    }
                }
            }
            VStack {
                VStack {
                    Text("World map").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                    Text(atual)
                }
                .frame(width: 450)
                .background(.white.opacity(0.5))
                Spacer()
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(locais) { local in
                            Button {
                                atual = local.name
                                mapa = MapCameraPosition.region(
                                    MKCoordinateRegion(center: local.coordinate, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
                                ))
                            } label : {
                                AsyncImage(url: URL(string: local.flag)) {
                                    imagem in imagem.resizable().frame(width: 150, height: 100)
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
