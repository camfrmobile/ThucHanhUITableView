//
//  MessageTableViewCell.swift
//  ThucHanhUITableView
//
//  Created by Trần Văn Cam on 10/11/2022.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        return view
    } ()
    let leftView: UIView = {
        let view = UIView()
        return view
    } ()
    let rightView: UIView = {
        let view = UIView()
        return view
    } ()
    
    let imageAvatar: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        return image
    } ()
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        return label
    } ()
    let notifyLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    } ()
    let timeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .darkGray
        return label
    } ()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setupUI()
        
        setupLayout()
        
    }
    
    func setupUI() {
        self.addSubview(containerView)
        containerView.addSubview(leftView)
        containerView.addSubview(rightView)
        leftView.addSubview(imageAvatar)
        rightView.addSubview(titleLabel)
        rightView.addSubview(notifyLabel)
        rightView.addSubview(timeLabel)
    }
    
    func setupLayout() {
        containerView.frame = CGRect(x: 0, y: 20, width: self.bounds.width, height: self.bounds.height)
        leftView.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        rightView.frame = CGRect(x: 60, y: 0, width: self.bounds.width-50, height: self.bounds.height)
        imageAvatar.frame = CGRect(x: 0, y: 0, width: leftView.bounds.width, height: leftView.bounds.height)
        
        titleLabel.frame = CGRect(x: 10, y: 0, width: rightView.bounds.width-100, height: 30)
        notifyLabel.frame = CGRect(x: 10, y: 30, width: rightView.bounds.width-50, height: 20)
        timeLabel.frame = CGRect(x: rightView.bounds.width-75, y: 0, width: 75, height: 25)
        
        imageAvatar.clipsToBounds = true
        imageAvatar.layer.cornerRadius = imageAvatar.bounds.width / 2
    }

}
