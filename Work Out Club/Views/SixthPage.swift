//
//  SixthPage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-16.
//

import UIKit

class SixthPage: UIViewController {
    
    let progressView : UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.setProgress(4/7, animated: true)
        progressView.trackTintColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        progressView.progressTintColor = UIColor(red: 255/255, green: 108/255, blue: 7/255, alpha: 0.27)
        return progressView
    }()
    
    let labelName : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.text = "What is your weight?"
        label.textAlignment = .center
        return label
    }()
    
    let labelText : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20)
        label.textColor = .gray
        label.text = "Please enter your weight below (KG)"
        label.textAlignment = .left
        return label
    }()
    
    let textFirstName : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        //textField.borderStyle = .roundedRect
        //textField.placeholder = "0"
        textField.layer.borderWidth = 1.5
        textField.layer.cornerRadius = 8
        textField.font = .systemFont(ofSize: 38, weight: .bold)
        //textField.textAlignment = .center
        return textField
    }()
    
    let ContinueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = .brown
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUi()
    }
    
    func setUi(){
        view.backgroundColor = .white
        view.addSubview(progressView)
        view.addSubview(labelName)
        view.addSubview(textFirstName)
        view.addSubview(labelText)
        view.addSubview(ContinueButton)
        
        progressView.frame = CGRect(x: (view.frame.size.width)/8, y: 100, width: view.frame.size.width-100, height: 20)
        ContinueButton.addTarget(self, action: #selector(Continue), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
        labelName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
        labelName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        labelName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        labelText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
        labelText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        labelText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        textFirstName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250),
        textFirstName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 80),
        textFirstName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -80),
        
        ContinueButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 460),
        ContinueButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
        ContinueButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
        
        
        ])
    }
    
    @objc func Continue(){
        
        let wString = textFirstName.text!
        
        let wDouble = Double(wString)
        
        let data = UserDefaults.standard
                data.set(wDouble, forKey: "weight")
            navigationController?.pushViewController(SeventhPage(), animated: true)
        }
    
}
