//
//  NetworkAPIService.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation

enum NetworkAPIServiceURL: String {
    case commentData = "https://jsonplaceholder.typicode.com/comments"
    case postData = "https://jsonplaceholder.typicode.com/posts"
    case albumData = "https://jsonplaceholder.typicode.com/albums"
    case photoData = "https://jsonplaceholder.typicode.com/photos"
}


enum HttpMethod: String{
    case post = "POST"
    case get = "GET"
    case delete = "DELETE"
    case patch = "PATCH"
    case update = "UPDATE"
}
