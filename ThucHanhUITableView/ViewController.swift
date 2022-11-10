//
//  ViewController.swift
//  ThucHanhUITableView
//
//  Created by Trần Văn Cam on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var messages: [Message] = []

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages = fakeData()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // dang ky cell
        tableView.register(MessageTableViewCell.self, forCellReuseIdentifier: "MessageTableViewCell")
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let moreAction = UIContextualAction(style: .normal, title: "Thêm") { content, view, closure in
            print("them")
        }
        moreAction.backgroundColor = .gray
        moreAction.image = UIImage(systemName: "ellipsis")
        
        let pinAction = UIContextualAction(style: .normal, title: "Ghim") { content, view, closure in
            print("ghim")
        }
        pinAction.backgroundColor = .blue
        pinAction.image = UIImage(systemName: "pin")
        
        let deleteAction = UIContextualAction(style: .normal, title: "Xóa") { content, view, closure in
            print("xoa")
            self.messages.remove(at: indexPath.row)
            //tableView.reloadData()
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        deleteAction.backgroundColor = .red
        deleteAction.image = UIImage(systemName: "trash")
        
        let actionConfig = UISwipeActionsConfiguration(actions: [ deleteAction, pinAction, moreAction])
        return actionConfig
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let msgCell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell

        msgCell.titleLabel.text = messages[indexPath.row].title
        msgCell.notifyLabel.text = messages[indexPath.row].notification
        msgCell.timeLabel.text = messages[indexPath.row].dateTime
        msgCell.imageAvatar.image = UIImage(named: messages[indexPath.row].imageName)
        return msgCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
