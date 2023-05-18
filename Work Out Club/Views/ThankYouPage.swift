//
//  ThankYouPage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-18.
//

import UIKit

class ThankYouPage: UIViewController {
    
    let progressView : UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.setProgress(7/7, animated: true)
        progressView.trackTintColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        progressView.progressTintColor = UIColor(red: 255/255, green: 108/255, blue: 7/255, alpha: 0.27)
        return progressView
    }()
    
    let labelThankYou : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.text = "Thank you for sharing"
        label.textAlignment = .center
        return label
    }()
    
    let ImageTY: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ty"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
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
        view.addSubview(labelThankYou)
        view.addSubview(ContinueButton)
        view.addSubview(ImageTY)
        
        progressView.frame = CGRect(x: (view.frame.size.width)/8, y: 100, width: view.frame.size.width-100, height: 20)
        ContinueButton.addTarget(self, action: #selector(Continue), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
        labelThankYou.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
        labelThankYou.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        labelThankYou.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        ImageTY.topAnchor.constraint(equalTo: labelThankYou.topAnchor, constant: 70),
        ImageTY.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        ImageTY.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
        ContinueButton.topAnchor.constraint(equalTo: ImageTY.topAnchor, constant: 460),
        ContinueButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
        ContinueButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
        
    
        ])
    }
    
    @objc func Continue(){
            navigationController?.pushViewController(GoalPage(), animated: true)
        }
}
