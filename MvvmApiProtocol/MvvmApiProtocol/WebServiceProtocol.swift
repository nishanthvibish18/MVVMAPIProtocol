//
//  WebServiceProtocol.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation

protocol APIRequestBuilderProtocol{
    
    func webRequest<T>(apirequest: APIRequestBuilder<T>, completionhandler: @escaping (Result<T, NetworkError>) -> Void)
    
}

