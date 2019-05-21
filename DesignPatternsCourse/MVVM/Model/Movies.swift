//
//  Movies.swift
//  DesignPatternsCourse
//
//  Created by Manish Sharma on 20/05/19.
//  Copyright © 2019 Manish Sharma. All rights reserved.
//

import Foundation

struct Movies: Decodable {
    var artistName: String?
    var trackName: String?
    var collectionName: String?
}

struct Results: Decodable {
    var results: [Movies]
}
