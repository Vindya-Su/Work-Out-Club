//
//  TableView.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-18.
//

import UIKit

class TableView: UIViewController {
    
    let LabelFirst : UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = .systemFont(ofSize: 35)
            label.textColor = .black
            label.text = "Hello, "
            label.textAlignment = .left
            return label
        }()
        
        let LabelTwo : UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = .systemFont(ofSize: 18)
            label.textColor = UIColor(red: 143/255, green: 143/255, blue: 137/255, alpha: 1.0)
            label.text = "Today's workout list!"
            label.numberOfLines = 3;
            label.textAlignment = .left
            return label
        }()
        
//        let ImageOne : UIImageView = {
//            let imageView = UIImageView(image: UIImage(named: "WorkOut"))
//            imageView.contentMode = .scaleAspectFit
//            imageView.translatesAutoresizingMaskIntoConstraints = false
//            return imageView
//        }()
    
    private let image: [UIImage] = [
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img03")!,
        UIImage(named: "img04")!,
        UIImage(named: "img05")!,
    ]
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    private func setupUI() {
        self.view.backgroundColor = .white
        
        view.addSubview(LabelFirst)
        view.addSubview(LabelTwo)
        
        
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            LabelFirst.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -10),
            LabelFirst.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            LabelFirst.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                        
            LabelTwo.topAnchor.constraint(equalTo: LabelFirst.topAnchor, constant: 50),
            LabelTwo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            LabelTwo.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            

                        
            //ImageOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            ImageOne.topAnchor.constraint(equalTo: LabelFirst.topAnchor, constant: 70),
//            ImageOne.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
//            ImageOne.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            //ImageOne.heightAnchor.constraint(equalToConstant: 200),
            //ImageOne.widthAnchor.constraint(equalToConstant: 200),
        
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 200),
            tableView.bottomAnchor.constraint (equalTo: self.view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint (equalTo: self.view.trailingAnchor),
        ])
    }
    
    
}

extension TableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("The TableView could not dequeu a CustomCell in ViewController.")
        }
        
        let image = self.image[indexPath.row]
        cell.configure(with: image, and: indexPath.row.description)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 112.5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("DEBUG PRINT", indexPath.row)
    }
}
