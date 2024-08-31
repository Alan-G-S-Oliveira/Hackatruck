//
//  ViewModel.swift
//  API
//
//  Created by Turma02-1 on 30/08/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/users")!) { data, _, error in
            do {
                self.users = try JSONDecoder().decode([User].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
