# MVC Pattern

* __Models__ : hold application data. usually structs or simple classes.
* __Views__ : display visual elements and controls on screen. subclasses of `UIView`.
* __Controller__ : coordinate between models and views. subclasses of `UIViewController`.


## Model

```swift
import Foundation

struct Question {
  var text: String
  var point: Double
  var isCorrect: Bool
}
```

## View

```swift
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
```

## Controller

```swift
import UIKit

class ExamController: UIViewController {
  
  @IBOutlet weak var questionView: QuestionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let question = Question(text: "Is Earth round?", point: 10, isCorrect: true)
    questionView.questionTextLabel.text = question.text
  }
}
```

