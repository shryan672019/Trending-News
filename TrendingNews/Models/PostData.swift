//
//  PostData.swift
//  TrendingNews
//
//  Created by Aryan Gupta on 12/08/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post :Decodable, Identifiable{
    
    var id:String {
        return objectID
    }
    let title:String
    let points:Int
    let url:String?
    let objectID:String
}
