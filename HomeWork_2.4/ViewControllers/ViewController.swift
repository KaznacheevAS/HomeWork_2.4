//
//  ViewController.swift
//  HomeWork_2.4
//
//  Created by Kaznacheev on 08.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    private let user = User.getUserdata()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarNavi = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarNavi.viewControllers else { return }
        
        viewControllers.forEach{
            if let welcomVC = $0 as? WelcomViewController {
                welcomVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userInfo =  navigationVC.topViewController as? UserInfoViewController else { return }
                        userInfo.user = user
            }
        }
    }
    
    //MARK: Action Log In
    @IBAction func getLogin() {
        if userTF.text != user.login || passwordTF.text != user.password {
            getAlert(titl: "Error", mesage: "No your is User / Password!")
        }
        return

    }

    //MARK: Forgon click is help Alert?
    @IBAction func getForgon(_ sender: UIButton) {
        switch sender.tag {
            case 0:
            getAlert(titl: "😤", mesage: "Your user is User!")
            case 1:
                getAlert(mesage: "Your password is Password!")
            default: return
        }
    }
    
    private func getAlert( titl: String = "Ooopas 😤", mesage: String ){
        let alert = UIAlertController(
                                        title: titl,
                                        message: mesage,
                                        preferredStyle: .alert
                                    )
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
