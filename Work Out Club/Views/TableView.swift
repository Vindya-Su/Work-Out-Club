//
//  TableView.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-18.
//

import UIKit

class TableView: UIViewController {
    
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
        
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
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
