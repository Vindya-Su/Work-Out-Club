//
//  SignIn.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-03-29.
//

import UIKit

class SignIn: UIViewController {
    
    
    let ImageSignUp: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "SignIn"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let GmailLoginButton: UIButton = {
        let button = UIButton()
        button.setTitle(" Continue with Google", for: .normal)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.layer.cornerRadius = 20
        button.setImage(UIImage(named:  "google"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let AppleIdLoginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"apple"), for: .normal)
        button.setTitle(" Continue with Apple", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let SignUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = .brown
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let labelAlreadyLogin : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        label.text = "Already have an account?"
        label.textAlignment = .center
        return label
    }()
    
    let AlreadyLoginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let hStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 5
        return stack
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
        view.addSubview(SignUpButton)
        view.addSubview(hStack)
        
        
        hStack.addArrangedSubview(labelAlreadyLogin)
        hStack.addArrangedSubview(AlreadyLoginButton)
        
        
        NSLayoutConstraint.activate([
            
            ImageSignUp.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            ImageSignUp.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ImageSignUp.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            GmailLoginButton.topAnchor.constraint(equalTo: ImageSignUp.topAnchor, constant: 290),
            GmailLoginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            GmailLoginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            //GmailLoginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -360),
            GmailLoginButton.heightAnchor.constraint(equalToConstant: 40),
            GmailLoginButton.widthAnchor.constraint(equalToConstant: 20),
            
            AppleIdLoginButton.topAnchor.constraint(equalTo: GmailLoginButton.topAnchor, constant: 65),
            AppleIdLoginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            AppleIdLoginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            //AppleIdLoginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -295),
            AppleIdLoginButton.heightAnchor.constraint(equalToConstant: 40),
            AppleIdLoginButton.widthAnchor.constraint(equalToConstant: 20),
            
            SignUpButton.topAnchor.constraint(equalTo: AppleIdLoginButton.topAnchor, constant: 150),
            SignUpButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            SignUpButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            //SignUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140),
            SignUpButton.heightAnchor.constraint(equalToConstant: 40),
            SignUpButton.widthAnchor.constraint(equalToConstant: 30),
            
            
            hStack.topAnchor.constraint(equalTo: SignUpButton.topAnchor, constant: 60),
            hStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
}
