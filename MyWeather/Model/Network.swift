//
//  Network.swift
//  MyWeather
//
//  Created by Валентина Евдокимова on 08.07.2022.
//

import Foundation

class Network {
    
    func fetch(urlString : String, completion: @escaping (Weather) -> ()) {
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                let tableData = try decoder.decode(Weather.self, from: data)
                completion(tableData)
            } catch {
                print(error)
            }
            
        }.resume()
    }
}
