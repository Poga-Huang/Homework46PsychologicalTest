//
//  ResultTableViewController.swift
//  Homework46PsychologicalTest
//
//  Created by 黃柏嘉 on 2021/12/27.
//

import UIKit

class ResultTableViewController: UITableViewController {
    
    struct PropertyKeys{
        static let resultCellIdentifier = "resultCell"
    }
    
    var resultData = [Result]()
    
    var addGradientLayer = false
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if addGradientLayer == false {
            addGradientLayer = true
            tableView.backgroundView = UIView(frame: tableView.bounds)
            view.makeGradientLayer(view: tableView.backgroundView!)
           }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(resultData)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let resultCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.resultCellIdentifier) as? ResultTableViewCell else{return UITableViewCell()}
        let result = resultData[indexPath.row]
        resultCell.updateContent(result: result)
        return resultCell
    }
    
}
