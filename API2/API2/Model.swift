//
//  Model.swift
//  API2
//
//  Created by Turma02-1 on 03/09/24.
//

import Foundation

struct Linguagem: Codable {
    let _id: String
    let _rev: String
    let nome: String
    let criador: String
    let dataCriacao: Int
    let logo: String
}
