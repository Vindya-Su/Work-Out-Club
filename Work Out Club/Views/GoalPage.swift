//
//  GoalPage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-17.
//

import UIKit

class GoalPage: UIViewController {
    
    let progressView : UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.setProgress(6/7, animated: true)
        progressView.trackTintColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        progressView.progressTintColor = UIColor(red: 255/255, green: 108/255, blue: 7/255, alpha: 0.27)
        return progressView
    }()
    
    let labelName : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.text = "What's your goal?"
        label.textAlignment = .center
        return label
    }()
    
    let GoalOneButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Lose weight", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let GoalTwoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Get toned", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let GoalThreeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Muscle gain", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let GoalFourButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Improved fitness and endurance", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let GoalFiveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Increased strength", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let ImgGoal: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "GoalImage"))
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
        view.addSubview(progressView)
        view.addSubview(labelName)
        view.addSubview(GoalOneButton)
        view.addSubview(GoalTwoButton)
        view.addSubview(GoalThreeButton)
        view.addSubview(GoalFourButton)
        view.addSubview(GoalFiveButton)
        view.addSubview(ImgGoal)
        
        
        progressView.frame = CGRect(x: (view.frame.size.width)/8, y: 100, width: view.frame.size.width-100, height: 20)
        
        GoalOneButton.addTarget(self, action: #selector(GoalOneLogin), for: .touchUpInside)
        GoalTwoButton.addTarget(self, action: #selector(GoalTwoLogin), for: .touchUpInside)
        GoalThreeButton.addTarget(self, action: #selector(GoalThreeLogin), for: .touchUpInside)
        GoalFourButton.addTarget(self, action: #selector(GoalFourLogin), for: .touchUpInside)
        GoalFiveButton.addTarget(self, action: #selector(GoalFiveLogin), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            labelName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            labelName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            labelName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            GoalOneButton.topAnchor.constraint(equalTo: labelName.topAnchor, constant: 60),
            GoalOneButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            GoalOneButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            GoalOneButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -580),
            
            GoalTwoButton.topAnchor.constraint(equalTo: GoalOneButton.topAnchor, constant: 80),
            GoalTwoButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            GoalTwoButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            GoalTwoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -500),
            
            GoalThreeButton.topAnchor.constraint(equalTo: GoalTwoButton.topAnchor, constant: 80),
            GoalThreeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            GoalThreeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            GoalThreeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -420),
            
            GoalFourButton.topAnchor.constraint(equalTo: GoalThreeButton.topAnchor, constant: 80),
            GoalFourButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            GoalFourButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            GoalFourButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -340),
            
            GoalFiveButton.topAnchor.constraint(equalTo: GoalFourButton.topAnchor, constant: 80),
            GoalFiveButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            GoalFiveButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            GoalFiveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -260),
            
            ImgGoal.topAnchor.constraint(equalTo: GoalFiveButton.topAnchor, constant: 100),
            ImgGoal.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ImgGoal.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            //ImgGoal.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -260),
        ])
        
    }
    
    @objc func GoalOneLogin(){
            navigationController?.pushViewController(ThankYouPage(), animated: true)
        }
    
    @objc func GoalTwoLogin(){
            navigationController?.pushViewController(ThankYouPage(), animated: true)
        }
    
    @objc func GoalThreeLogin(){
            navigationController?.pushViewController(ThankYouPage(), animated: true)
        }
    
    @objc func GoalFourLogin(){
            navigationController?.pushViewController(ThankYouPage(), animated: true)
        }
    
    @objc func GoalFiveLogin(){
            navigationController?.pushViewController(ThankYouPage(), animated: true)
        }
}
