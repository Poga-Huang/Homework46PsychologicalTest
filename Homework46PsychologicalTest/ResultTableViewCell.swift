//
//  ResultTableViewCell.swift
//  Homework46PsychologicalTest
//
//  Created by 黃柏嘉 on 2021/12/27.
//

import UIKit

class ResultTableViewCell: UITableViewCell {
    @IBOutlet weak var userSelectOptionsLabel: UILabel!
    @IBOutlet weak var QuestionTypeLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    func updateContent(result:Result){
        userSelectOptionsLabel.text = result.option
        QuestionTypeLabel.text = result.QuestionType
        resultLabel.text = result.result
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
