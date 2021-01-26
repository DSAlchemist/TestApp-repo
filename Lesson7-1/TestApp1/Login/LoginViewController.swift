//
//  LoginViewController.swift
//  TestApp1
//
//  Created by Danil G. on 23.12.2020.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var firstDot: UIView!
    @IBOutlet weak var secondDot: UIView!
    @IBOutlet weak var thirdDot: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var paswordTextField: UITextField!
    
//    @IBAction func loginButtonPressed(_ sender: Any) {
//        animateDots()
//        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
//            if self.checkUserData() {
//                self.performSegue(withIdentifier: "MainSegue", sender: nil)
//            } else {
//                self.showLoginError()
//            }
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let result = checkUserCredentials()
        
        if !result {
            showAlert()
        }
        
        return result
    }
      
    @objc func keyboardWillShow(notification: Notification) {
        guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.size.height, right: 0)
        scrollView.contentInset = insets
    }
    
    func checkUserCredentials() -> Bool {
        return loginTextField.text! == "1" && paswordTextField.text! == "1"
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
       
    
    @objc func keyboardWillHide(notification: Notification) {
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        count = 0
//        firstDot.layer.cornerRadius = firstDot.bounds.height / 2
//        secondDot.layer.cornerRadius = secondDot.bounds.height / 2
//        thirdDot.layer.cornerRadius = thirdDot.bounds.height / 2
//        firstDot.backgroundColor = .clear
//        secondDot.backgroundColor = .clear
//        thirdDot.backgroundColor = .clear
//        animateElements()
//    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
    
    
    }
    
//    Анимация точки
    func animateDots() {
        UIView.animate(withDuration: 0.5, animations: {
            self.firstDot.backgroundColor = .white
            self.firstDot.alpha = 0
        }) { _ in
            self.firstDot.alpha = 1
            UIView.animate(withDuration: 0.5, animations: {
                self.secondDot.backgroundColor = .white
                self.secondDot.alpha = 0
            }) { _ in
                self.secondDot.alpha = 1
                UIView.animate(withDuration: 0.5, animations: {
                    self.thirdDot.backgroundColor = .white
                    self.thirdDot.alpha = 0
                }) { _ in
                    self.thirdDot.alpha = 1
//                    if self.count < 3 {
//                        self.count += 1
//                        self.animateDots()
                    }
                }
            }
        }
    }

//}

