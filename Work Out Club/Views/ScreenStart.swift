//
//  ViewController.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-03-27.
//

import UIKit

class ScreenStart: UIViewController {
    
    let image: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "stretching-exercise"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let logo: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let labelAppName : UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = .systemFont(ofSize: 24)
            label.textColor = .systemBrown
            label.text = "Work Out Club"
            label.textAlignment = .center
            return label
    }()
    
    let labelWelcome : UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24, weight: .bold)
            label.textColor = .black
            label.text = "WELCOME"
            label.textAlignment = .center
            return label
    }()
    
    let labelLoginApp : UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = .systemFont(ofSize: 16)
            label.textColor = .black
            label.text = "Please login to use the app"
            label.textAlignment = .center
            return label
    }()
    
    let StartedButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Get Started", for: .normal)
            button.backgroundColor = .brown
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 30
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUi()
    }
    
    func setUi(){
        view.backgroundColor = .white
        view.addSubview(image)
        view.addSubview(labelAppName)
        view.addSubview(labelWelcome)
        view.addSubview(labelLoginApp)
        view.addSubview(StartedButton)
        view.addSubview(logo)
        
        StartedButton.addTarget(self, action: #selector(GetStarted), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:-240),
            logo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 75),
            logo.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -270),
            
            labelAppName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -5),
            labelAppName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 110),
            labelAppName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -90),
            
            image.topAnchor.constraint(equalTo: labelAppName.topAnchor, constant: -35),
            image.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            image.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            labelWelcome.topAnchor.constraint(equalTo: image.topAnchor, constant: 85),
            labelWelcome.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            labelWelcome.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            labelWelcome.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            
            labelLoginApp.topAnchor.constraint(equalTo: labelWelcome.topAnchor, constant: 95),
            labelLoginApp.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            labelLoginApp.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            labelLoginApp.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
                    
            StartedButton.topAnchor.constraint(equalTo: labelLoginApp.topAnchor, constant: 500),
            StartedButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 80),
            StartedButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -80),
            StartedButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
         ])
    }
    
    @objc func GetStarted(){
            navigationController?.pushViewController(SignUp(), animated: true)
        }

}

