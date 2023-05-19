//
//  ProfilePage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-19.
//

import UIKit

class ProfilePage: UIViewController {
    
    let BackButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"Back16"), for: .normal)
        //button.setTitle("  Back", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        //button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        //button.layer.cornerRadius = 20
        return button
    }()
    
    let SignOutButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"sign-out-alt"), for: .normal)
        //button.setTitle("  Back", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        //button.backgroundColor = UIColor(red: 201/255, green: 193/255, blue: 197/255, alpha: 0.27)
        button.setTitleColor(.black, for: .normal)
        //button.layer.cornerRadius = 20
        return button
    }()
    
    let ProfileImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "MyProfile"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let labelName : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.text = "Vindya Sunali"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUi()
    }
    
    func setUi(){
        view.backgroundColor = .white
        view.addSubview(ProfileImage)
        view.addSubview(BackButton)
        view.addSubview(SignOutButton)
        view.addSubview(labelName)
        
        BackButton.addTarget(self, action: #selector(BackB), for: .touchUpInside)
        SignOutButton.addTarget(self, action: #selector(SignOutBtn), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            BackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 01),
            BackButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            //BackButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100),
            
            SignOutButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 01),
            //SignOutButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            SignOutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            ProfileImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -200),
            ProfileImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            ProfileImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100),
            
            labelName.topAnchor.constraint(equalTo: ProfileImage.topAnchor, constant: 400),
            labelName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            labelName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
        ])
    }
    
    @objc func BackB(){
            navigationController?.pushViewController(TableView(), animated: true)
        }
    
    @objc func SignOutBtn(){
            navigationController?.pushViewController(SignIn(), animated: true)
        }
}
