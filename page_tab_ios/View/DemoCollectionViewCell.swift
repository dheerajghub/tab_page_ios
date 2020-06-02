//
//  DemoCollectionViewCell.swift
//  page_tab_ios
//
//  Created by Dheeraj Kumar Sharma on 02/06/20.
//  Copyright © 2020 Dheeraj Kumar Sharma. All rights reserved.
//

import UIKit

class DemoCollectionViewCell: UICollectionViewCell {
    
    let imageView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 234/255, green: 234/255, blue: 234/255, alpha: 1)
        v.layer.cornerRadius = 30
        return v
    }()
    
    let titleView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 234/255, green: 234/255, blue: 234/255, alpha: 1)
        v.layer.cornerRadius = 12.5
        return v
    }()
    
    let subtitleView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 234/255, green: 234/255, blue: 234/255, alpha: 1)
        v.layer.cornerRadius = 12.5
        return v
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        addSubview(imageView)
        addSubview(titleView)
        addSubview(subtitleView)
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 60),
            imageView.widthAnchor.constraint(equalToConstant: 60),
            
            titleView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            titleView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            titleView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            titleView.heightAnchor.constraint(equalToConstant: 25),
            
            subtitleView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            subtitleView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            subtitleView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 10),
            subtitleView.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
