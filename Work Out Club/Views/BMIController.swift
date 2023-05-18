//
//  BMIController.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-18.
//

import UIKit

class BMIController: UIViewController {
    
    let progressView : UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.setProgress(7/7, animated: true)
        progressView.trackTintColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        progressView.progressTintColor = UIColor(red: 255/255, green: 108/255, blue: 7/255, alpha: 0.27)
        return progressView
    }()
    
    let labelName : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.text = "Calculate your BMI"
        label.textAlignment = .center
        return label
    }()
    
    let ImageBmi: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bmi"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let labeText : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 28)
        label.textColor = .black
        label.text = "Your BMI is"
        label.textAlignment = .center
        return label
    }()
    
    let labelBmi : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 10
        label.font = .systemFont(ofSize: 28)
        label.textColor = .black
        label.text = " v"
        label.textAlignment = .center
        return label
    }()
    
    let labeTextTwo : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 10)
        label.textColor = .black
        label.numberOfLines = 5;
        label.text = "A BMI of 18.5 - 24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems."
        label.textAlignment = .center
        return label
    }()
    
//    let Bmitextbox : UITextField = {
//            let textField = UITextField()
//            textField.translatesAutoresizingMaskIntoConstraints = false
//            textField.borderStyle = .roundedRect
//            textField.textAlignment = .center
//            textField.keyboardType = .numberPad
//            textField.font = .systemFont(ofSize: 40, weight: .bold)
//            textField.backgroundColor = .white
//            textField.layer.borderWidth = 1.0
//            textField.layer.cornerRadius = 5
//            textField.textColor = .black
//            return textField
//        }()
    
    let ContinueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = .brown
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
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
        view.addSubview(ImageBmi)
        view.addSubview(labeText)
        view.addSubview(labelBmi)
        view.addSubview(labeTextTwo)
        view.addSubview(ContinueButton)
        
        
        
        
        progressView.frame = CGRect(x: (view.frame.size.width)/8, y: 100, width: view.frame.size.width-100, height: 20)
        ContinueButton.addTarget(self, action: #selector(Continue), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
        labelName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
        labelName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        labelName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        ImageBmi.topAnchor.constraint(equalTo: labelName.topAnchor, constant: 50),
        ImageBmi.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        ImageBmi.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        labeText.topAnchor.constraint(equalTo: ImageBmi.topAnchor, constant: 250),
        labeText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        labeText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        labelBmi.topAnchor.constraint(equalTo: labeText.topAnchor, constant: 40),
        labelBmi.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 80),
        labelBmi.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -80),
        
        labeTextTwo.topAnchor.constraint(equalTo: labelBmi.topAnchor, constant: 70),
        labeTextTwo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        labeTextTwo.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        ContinueButton.topAnchor.constraint(equalTo: ImageBmi.topAnchor, constant: 460),
        ContinueButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
        ContinueButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
        
        ])
        
        
        
    }
    @objc func Continue(){
            navigationController?.pushViewController(GoalPage(), animated: true)
        }
}
