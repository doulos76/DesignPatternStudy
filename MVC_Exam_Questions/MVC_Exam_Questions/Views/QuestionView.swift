//
//  QuestionView.swift
//  MVC_Exam_Questions
//
//  Created by dave76 on 19/12/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

class QuestionView: UIView {
  
  @IBOutlet var contentView: UIView!
  @IBOutlet var questionTextLabel: UILabel!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    fatalError("init(coder:) has not been implemented")
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed("QuestionView", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
  }
  
}
