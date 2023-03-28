//
//  SignUp.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-03-27.
//

import UIKit

class SignUp: UIViewController {
    
    let ImageSignUp: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "singUpImage"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let GmailLoginButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Continue with Google", for: .normal)
            button.backgroundColor = .systemGray5
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 20
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
    }()
    
    let AppleIdLoginButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Continue with Apple", for: .normal)
            button.backgroundColor = .systemGray5
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 20
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        setUi()
        
    }
    
    func setUi(){
        view.backgroundColor = .white
        view.addSubview(ImageSignUp)
        view.addSubview(GmailLoginButton)
        view.addSubview(AppleIdLoginButton)
        
        NSLayoutConstraint.activate([
            
            ImageSignUp.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            ImageSignUp.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ImageSignUp.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            GmailLoginButton.topAnchor.constraint(equalTo: ImageSignUp.topAnchor, constant: 290),
            GmailLoginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            GmailLoginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            GmailLoginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -360),
            
            AppleIdLoginButton.topAnchor.constraint(equalTo: GmailLoginButton.topAnchor, constant: 65),
            AppleIdLoginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            AppleIdLoginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            AppleIdLoginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -295),
        ])
        
    }
    
    
    

}
