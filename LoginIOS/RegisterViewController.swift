//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        
    }

    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        print("RegisterViewController - onLoginViewControllerBtnClicked() called / 로그인 버튼 클릭!!")
        
        //Pop NavigationViewController
        self.navigationController?.popViewController(animated: true)
    }
    
}
