//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Sterre Smit on 13/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultAnswerDescription: UILabel!
    
    var responses: [Answer]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        

        // Do any additional setup after loading the view.
    }
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [TripType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
    }
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = " \(mostCommonAnswer.rawValue)"
        resultAnswerDescription.text = mostCommonAnswer.definition
       
   
    }

}
