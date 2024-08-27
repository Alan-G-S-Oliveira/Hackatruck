//
//  Tela05.swift
//  Aula02
//
//  Created by Turma02-1 on 23/08/24.
//

import SwiftUI

func calcular_imc(peso: Double, altura: Double) -> String{
    var saida = ""
    let imc = peso / (altura * altura)
    if imc < 18.5 {
        saida = "Baixo peso"
    } else if imc < 24.99 {
        saida = "Normal"
    } else if imc < 29.99 {
        saida = "Sobrepeso"
    } else {
        saida = "Obesidade"
    }
    
    return saida
}

struct Tela05: View {
    @State var peso: Double?
    @State var altura: Double?
    @State var status: String = ""
    
    var body: some View {
        ZStack {
            if status == "Baixo peso" {
                Color(.color2).ignoresSafeArea()
            } else if status == "Normal" {
                Color(.color1).ignoresSafeArea()
            } else if status == "Sobrepeso" {
                Color(.color3).ignoresSafeArea()
            } else if status == "Obesidade"{
                Color(.color4).ignoresSafeArea()
            } else {
                Color(.gray).opacity(0.5).ignoresSafeArea()
            }
            VStack {
                Text("Calculadora de IMC").font(.title).padding()
                TextField("Digite seu peso:", value: $peso, format: .number ).padding().background(Color.white.opacity(0.8)).cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                TextField("Digite sua altura:", value: $altura, format: .number).padding().background(Color.white.opacity(0.8)).cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
                Button("Calcular"){
                    if(peso != nil && altura != nil){
                        
                        status = calcular_imc(peso: peso!, altura: altura!)
                        
                    }
                }.buttonStyle(.borderedProminent)
                Spacer()
                Text(status).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(.image1).resizable().aspectRatio(contentMode: .fit)
            }.padding()
        }
    }
}

#Preview {
    Tela05()
}
