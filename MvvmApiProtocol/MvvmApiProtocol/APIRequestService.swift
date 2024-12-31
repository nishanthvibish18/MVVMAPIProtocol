//
//  APIRequestService.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation


struct APIRequestService{
    
    let commentApiListRequestService: APIRequestBuilder<[CommentDataModel]> = {
        return APIRequestBuilder(url: NetworkAPIServiceURL.commentData.rawValue)
    }()
    
    let postDataApiListRequestService: APIRequestBuilder<[PostDataModel]> = {
        return APIRequestBuilder(url: NetworkAPIServiceURL.postData.rawValue)
    }()
    
    let albumsApiRequestService: APIRequestBuilder<[AlbumDataModel]> = {
        return APIRequestBuilder(url: NetworkAPIServiceURL.albumData.rawValue)
    }()
    
    let photosDataModel: APIRequestBuilder<[PhotosDataModel]> = {
        return APIRequestBuilder(url: NetworkAPIServiceURL.photoData.rawValue)
    }()
    
    
}
