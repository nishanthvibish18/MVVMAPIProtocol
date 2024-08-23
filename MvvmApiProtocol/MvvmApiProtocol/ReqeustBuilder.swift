//
//  ReqeustBuilder.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation

class APIRequestBuilder<T: Codable>{
    var url: String
    var header: HttpMethod = .get
    var body: Data? = nil
    
    init(url: String) {
        self.url = url
    }
    
}
