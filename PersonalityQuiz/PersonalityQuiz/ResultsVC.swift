//
//  ResultsVC.swift
//  PersonalityQuiz
//
//  Created by Имангали on 5/3/22.
//

import UIKit

class ResultsVC: UIViewController {
    
    var responses: [Answer]!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultDefinition: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map{ $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinition.text = mostCommonAnswer.definition
        
    }

}
