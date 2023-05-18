//
//  ProfilePage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-19.
//

import UIKit

class ProfilePage: UIViewController {
    
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
        view.addSubview(labelName)
        
        NSLayoutConstraint.activate([
            
            ProfileImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -200),
            ProfileImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            ProfileImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100),
            
            labelName.topAnchor.constraint(equalTo: ProfileImage.topAnchor, constant: 400),
            labelName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            labelName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
        ])
    }
}
