//
//  Result.swift
//  HAXOR NEWS
//
//  Created by Hiba Abdulla on 6/8/25.
//

import Foundation

struct Result: Decodable {
    let hits : [Post]
}

struct Post: Decodable, Identifiable {
   var id: String {
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
