//
//  ViewModel.swift
//  API2
//
//  Created by Turma02-1 on 03/09/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var linguagens: [Linguagem] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/nome")!) { data, _, error in
                do {
                    self.linguagens = try JSONDecoder().decode([Linguagem].self, from: data!)
                } catch {
                print(error)
            }
        }
        task.resume()
    }
}
