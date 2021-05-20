//
//  ViewController.swift
//  animations
//
//  Created by  Bagrat Arutyunov on 13.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var redSquareWidth: NSLayoutConstraint!
    
    
    @IBOutlet weak var redSquareHeight: NSLayoutConstraint!
  
    
    
    
    
    @IBOutlet weak var buttonsStackVIew: UIStackView!
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!

    
    
    
    @IBOutlet weak var redSquareView: UIView!
    
    var checkedAnimation = 0
    
 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    
    @IBAction func previousButton(_ sender: Any) {
        if checkedAnimation == 0 {
            checkedAnimation = 6
        }else {
            checkedAnimation -= 1
        }
        numberLabel.text = String(checkedAnimation)
    }
    
    
    
    @IBAction func nextButton(_ sender: Any) {
        if checkedAnimation == 6 {
            checkedAnimation = 0
        }else {
            checkedAnimation += 1
        }
        numberLabel.text = String(checkedAnimation)
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
       // self.redSquareView.layer.removeAllAnimations()
        
        switch checkedAnimation {
        case 0:
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .autoreverse) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.backgroundColor = UIColor.yellow
            } completion: { (isCompleted) in
                self.redSquareView.backgroundColor = UIColor.red
            }

        case 1:
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .autoreverse) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.center.x = self.view.bounds.size.width - self.redSquareView.bounds.size.width / 2
                self.redSquareView.center.y = 0 + self.redSquareView.bounds.size.height / 2
            } completion: { (isCompleted) in
                self.redSquareView.center = self.view.center
            }
            
        case 2:
            UIView.animate(withDuration: 0.5, delay: 0, options: .autoreverse) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.layer.cornerRadius = self.redSquareView.frame.size.width / 2
            } completion: { (isCompleted) in
                self.redSquareView.layer.cornerRadius = 0
            }

        case 3:
        
            UIView.animate(withDuration: 0.5, delay: 0, options: .autoreverse) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            } completion: { (isCompleted) in
                self.redSquareView.transform = CGAffineTransform(rotationAngle: 0)
            }
            
        case 4:
           
//Не определился каким лучше сделать
            
//            UIView.animate(withDuration: 1.0, delay: 0, options: .autoreverse) {
//                self.redSquareView.isHidden = !self.redSquareView.isHidden
//            }
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .autoreverse) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.backgroundColor = self.view.backgroundColor
            } completion: { (isCompleted) in
                self.redSquareView.backgroundColor = UIColor.red
            }
       
        case 5:
           
            UIView.animate(withDuration: 1.5, delay: 0, options: .autoreverse) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.transform = CGAffineTransform(scaleX: 2, y: 2)
            
            } completion: { (isCompleted) in
                self.redSquareView.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
            
        case 6:
            self.redSquareView.layer.removeAllAnimations()
            UIView.animate(withDuration: 0.5, delay: 0, options: .repeat) {
                self.redSquareView.layer.removeAllAnimations()
                self.redSquareView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }
          

        default:
            return
        }
    }
    
    
    
    
    
}

