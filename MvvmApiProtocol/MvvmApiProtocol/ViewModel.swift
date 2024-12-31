//
//  ViewModel.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import Foundation


class ViewModel{
    
    var commentListDataArrayModel: TableViewModel?
    
     func webService(completionHandler: @escaping(Result<TableViewModel, NetworkError>) -> Void){
        
        NetworkingService.sharedInstance.webRequest(apirequest: APIRequestService().commentApiListRequestService) { result in
            switch result {
            case .success(let success):
                self.commentListDataArrayModel = TableViewModel(commentsArrayModel: success)
                
                completionHandler(.success(self.commentListDataArrayModel!))
                
            case .failure(let failure):
                completionHandler(.failure(failure))
            }
        }
    }
    
}


class TableViewModel{
    var commentsArrayModel: [CommentDataModel]
    
    init(commentsArrayModel: [CommentDataModel]) {
        self.commentsArrayModel = commentsArrayModel
    }
    
    
    func numberOfSection() -> Int{
        return 1
    }
    
    func numberOfRowsInSection() -> Int{
        return self.commentsArrayModel.count
    }
    
    func cellForRowAtIndexPath(index: Int) -> CommentDataModel{
        return self.commentsArrayModel[index]
    }
}
