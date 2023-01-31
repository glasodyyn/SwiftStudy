//
//  ViewController.swift
//  NiceApp
//
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    //Title
    let titleLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Main View"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    //Animation
    let animationView: LottieAnimationView = {
        let animView = LottieAnimationView(name: "132540-loading-funny-animation")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
        return animView
    }()
    
    // Create View
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        //AnimationPlay
        animationView.play{ (finish) in
            //Check
            print("Finsh Animation")
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLable)
            
            self.titleLable.translatesAutoresizingMaskIntoConstraints = false
            self.titleLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLable.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
        
    }


}

