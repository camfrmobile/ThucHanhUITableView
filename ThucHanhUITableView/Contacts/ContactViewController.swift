//
//  ContactViewController.swift
//  ThucHanhUITableView
//
//  Created by Trần Văn Cam on 10/11/2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var contactTableView: UITableView!
    
    var dictionary: [String: [Message]] = [:]
    var sections: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getContact()
        
        contactTableView.delegate = self
        contactTableView.dataSource = self
    }

    func getContact() {
        var datas = fakeData()
        
        datas.sort { msg1, msg2 in
            return msg1.title < msg2.title
        }
        for item in datas {
            var alpha = String(item.title.first?.uppercased() ?? "#")
            let num = Int(alpha)
            if num != nil {
                alpha = "#"
            }
            if dictionary[alpha] == nil {
                dictionary[alpha] = []
            }
            dictionary[alpha]?.append(item)
            if sections.contains(alpha) {
                continue
            }
            sections.append(alpha)
        }
    }

}

extension ContactViewController: UITableViewDelegate {
    
}

extension ContactViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let alpha = sections[section]
        return dictionary[alpha]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let alpha = sections[indexPath.section]
        cell.textLabel?.text = dictionary[alpha]?[indexPath.row].title
        //cell.imageView?.image = UIImage(named: datas[indexPath.row].imageName)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dictionary.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
}
