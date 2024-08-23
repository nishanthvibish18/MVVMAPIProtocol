//
//  ViewController.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import UIKit

class ViewController: UIViewController {

    private var viewModel: ViewModel = ViewModel()
    
    @IBOutlet weak var commentListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.apiLoader()
        // Do any additional setup after loading the view.
    }
    
    
    private func apiLoader(){
        

        self.viewModel.webService { results in
            switch results {
            case .success(let success):
                self.viewModel.commentListDataArrayModel?.commentsArrayModel = success.commentsArrayModel

                
                DispatchQueue.main.async {
                    self.commentListTableView.reloadData()
                }
            case .failure(let failure):
                print("error: \(failure.localizedError)")
            }
        }
    
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel.commentListDataArrayModel?.numberOfSection() ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.commentListDataArrayModel?.numberOfRowsInSection() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "listTableViewCell", for: indexPath) as? listTableViewCell else{ return UITableViewCell.init() }
        cell.selectionStyle = .none
        let viewData = self.viewModel.commentListDataArrayModel?.cellForRowAtIndexPath(index: indexPath.row)
        cell.dataNameLabel.text = "User Name : \(viewData?.name ?? "")\nEmail Address : \(viewData?.email ?? "")\nMessage : \(viewData?.body ?? "")"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
