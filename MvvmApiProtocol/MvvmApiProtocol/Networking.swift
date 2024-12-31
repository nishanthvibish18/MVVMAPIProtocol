//
//  Networking.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//
import Foundation

class NetworkingService: APIRequestBuilderProtocol{
    
    
    private init(){
        
    }
    static let sharedInstance = NetworkingService()
    
    func webRequest<T>(apirequest: APIRequestBuilder<T>, completionhandler: @escaping (Result<T, NetworkError>) -> Void){
        
        guard let urlString = URL(string: apirequest.url) else{
            completionhandler(.failure(.urlNotFound))
            return
        }
        
        var urlRequest: URLRequest = URLRequest(url: urlString)
        urlRequest.httpMethod = apirequest.header.rawValue
        if(apirequest.body != nil){
            urlRequest.httpBody = apirequest.body
        }
        
        URLSession.shared.dataTask(with: urlRequest) { resData, res, error in
            guard let response = res as? HTTPURLResponse, response.statusCode == 200  else{
                completionhandler(.failure(.serverNotReachable))
                return
            }
            
            guard let data = resData else{
                completionhandler(.failure(.noDataFound))
                return
            }
            
            do{
                let responseDecoder = try JSONDecoder().decode(T.self, from: data)
                completionhandler(.success(responseDecoder))
            }
            catch{
                completionhandler(.failure(.decodingError))
            }
            
        }
        .resume()
    }
    
    
    
}
