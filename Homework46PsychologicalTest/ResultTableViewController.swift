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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(resultData)
    }
    override func viewDidLayoutSubviews() {
        view.makeGradientLayer(view: view)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resultCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.resultCellIdentifier) as! ResultTableViewCell
        let result = resultData[indexPath.row]
        resultCell.updateContent(result: result)
        return resultCell
    }
    
}
