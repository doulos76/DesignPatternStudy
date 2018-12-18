//
//  ExamController.swift
//  MVC_Exam_Questions
//
//  Created by dave76 on 19/12/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import Foundation
import UIKit

class ExamController: UIViewController {
  
  @IBOutlet weak var questionView: QuestionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let question = Question(text: "Is Earth round?", point: 10, isCorrect: true)
    questionView.questionTextLabel.text = question.text
  }
}
