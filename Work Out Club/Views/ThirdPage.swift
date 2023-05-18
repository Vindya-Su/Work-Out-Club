//
//  ThirdPage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-03-29.
//

import UIKit

class ThirdPage: UIViewController {
    
    let progressView : UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.setProgress(1/7, animated: true)
        progressView.trackTintColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        progressView.progressTintColor = UIColor(red: 255/255, green: 108/255, blue: 7/255, alpha: 0.27)
        return progressView
    }()
    
    let labelHeading : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24)
        label.textColor = .gray
        label.text = "Welcome to Work Out Club"
        label.textAlignment = .center
        return label
    }()
    
    let labelGender : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.text = "What’s your gender?"
        label.textAlignment = .center
        return label
    }()
    
//    let FemaleButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Female", for: .normal)
//        button.backgroundColor = .systemGray5
//        button.setTitleColor(.black, for: .normal)
//        button.layer.cornerRadius = 8
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
//    let MaleButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Male", for: .normal)
//        button.backgroundColor = .systemGray5
//        button.setTitleColor(.black, for: .normal)
//        button.layer.cornerRadius = 8
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
    
    let FemaleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"female"), for: .normal)
        button.setTitle("  Female", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let MaleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Male", for: .normal)
        button.setImage(UIImage(named:"male"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let ImageUnder: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "imagess"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        setUi()
    }
    
    func setUi(){
        view.backgroundColor = .white
        view.addSubview(labelHeading)
        view.addSubview(labelGender)
        view.addSubview(FemaleButton)
        view.addSubview(MaleButton)
        view.addSubview(progressView)
        view.addSubview(ImageUnder)
        
        progressView.frame = CGRect(x: (view.frame.size.width)/8, y: 100, width: view.frame.size.width-100, height: 20)
        
        FemaleButton.addTarget(self, action: #selector(FemaleLogin), for: .touchUpInside)
        MaleButton.addTarget(self, action: #selector(MaleLogin), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            
            labelHeading.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            labelHeading.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            labelHeading.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            labelGender.topAnchor.constraint(equalTo: labelHeading.topAnchor, constant: 50),
            labelGender.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            labelGender.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            FemaleButton.topAnchor.constraint(equalTo: labelGender.topAnchor, constant: 60),
            FemaleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            FemaleButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            FemaleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -480),
            
            MaleButton.topAnchor.constraint(equalTo: FemaleButton.topAnchor, constant: 120),
            MaleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            MaleButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            MaleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -355),
            
            ImageUnder.topAnchor.constraint(equalTo: MaleButton.topAnchor, constant: 190),
            ImageUnder.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            ImageUnder.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            ImageUnder.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            
            
            
        ])
     
    }
    
    @objc func FemaleLogin(){
            navigationController?.pushViewController(FourthPage(), animated: true)
        }
    
    @objc func MaleLogin(){
            navigationController?.pushViewController(FourthPage(), animated: true)
        }
}
