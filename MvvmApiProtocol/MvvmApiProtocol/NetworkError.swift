//
//  NetworkError.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation

enum NetworkError: Error{
    case urlNotFound
    case serverNotReachable
    case noDataFound
    case decodingError
    
    
    var localizedError: String{
        switch self {
        case .urlNotFound:
            return "URL Not Found"
        case .serverNotReachable:
            return "Server Not Reachable"
        case .noDataFound:
            return "No Data Found"
        case .decodingError:
            return "Decoding Error"
        }
    }
}
