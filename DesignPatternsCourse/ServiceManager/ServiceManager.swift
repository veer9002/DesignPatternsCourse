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
    
    func getAllMovies(urlString: String,completion: @escaping (_ result:[Movies]?, _ error: Error?) -> ()) {
        let urlString = Constants.Urls
        
    }
    
}
