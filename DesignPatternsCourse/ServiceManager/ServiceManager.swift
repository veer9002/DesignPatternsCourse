//
//  ServiceManager.swift
//  DesignPatternsCourse
//
//  Created by Manish Sharma on 20/05/19.
//  Copyright © 2019 Manish Sharma. All rights reserved.
//

import Foundation

class ServiceManager {
    
    static let shareInstance = ServiceManager()
    
    // MARK: GET API
    // Fetch results
    func getMoviesAPI(urlString: String, completion: @escaping ([Movies]) -> ()) {
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            DispatchQueue.main.async {
                if let err = err {
                    print("Failed",err)
                    return
                }
                guard let data = data else { return }
                
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let result = try decoder.decode([Movies].self, from: data)
                    completion(result)
                } catch let jsonErr {
                    print("Failed to decode", jsonErr)
                }
            }
            }.resume()
    }
}
