//
//  ViewController.swift
//  CollectionCell
//
//  Created by Jervy Umandap on 8/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var models = [Model]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        table.separatorStyle = .none
        
        configModel()
        
    }
    
    func configModel() {
        models.append(Model(text: "first", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third", imageName: "image_3"))
        models.append(Model(text: "fourth", imageName: "image_4"))
        
        models.append(Model(text: "first", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third", imageName: "image_3"))
        models.append(Model(text: "fourth", imageName: "image_4"))
        
        models.append(Model(text: "first", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third", imageName: "image_3"))
        models.append(Model(text: "fourth", imageName: "image_4"))
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
}

struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

