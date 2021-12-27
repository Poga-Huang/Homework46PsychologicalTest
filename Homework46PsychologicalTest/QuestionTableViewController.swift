//
//  QuestionTableViewController.swift
//  Homework46PsychologicalTest
//
//  Created by 黃柏嘉 on 2021/12/27.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    @IBOutlet weak var currentQuestionLabel: UILabel!
    @IBOutlet weak var currentQuestionProgressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionsButton: [UIButton]!
    
    var resultArray = [Result]()
    let questions = QuestionData()
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion(index: questionIndex)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.makeGradientLayer(view: view)
    }
    @IBSegueAction func passResultData(_ coder: NSCoder) -> ResultTableViewController? {
        let controller = ResultTableViewController(coder: coder)
        controller?.resultData = resultArray
        return controller
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        saveResult(index: questionIndex, buttonTag: sender.tag)
        if questionIndex < 5{
            questionIndex += 1
            updateQuestion(index: questionIndex)
        }else if questionIndex == 5{
            performSegue(withIdentifier: "showResult", sender: nil)
        }
    }
    
    func updateQuestion(index:Int){
        let question = questions.question[index]
        questionLabel.text = question.Question
        for (i,button) in optionsButton.enumerated(){
            button.setTitle(question.options[i], for: .normal)
        }
        currentQuestionLabel.text = "\(Int(question.QuestionSequence))/6"
        currentQuestionProgressView.progress = question.QuestionSequence/6
    }
    
    func saveResult(index:Int,buttonTag:Int){
        let question = questions.question[index]
        let result = Result(QuestionType: question.QuestionType, option: question.options[buttonTag], result: question.result[buttonTag])
        resultArray.append(result)
    }
}
