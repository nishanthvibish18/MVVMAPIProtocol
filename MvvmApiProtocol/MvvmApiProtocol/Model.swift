//
//  Model.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation

struct CommentDataModel: Codable{
    let name: String
    let email: String
    let body: String
    let id: Int
    let postId: Int
}


struct PostDataModel: Codable{
    let id: Int
    let title: String
    let body: String
    
}

struct AlbumDataModel: Codable{
    let id: Int
    let title:String
}

struct PhotosDataModel: Codable{
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
