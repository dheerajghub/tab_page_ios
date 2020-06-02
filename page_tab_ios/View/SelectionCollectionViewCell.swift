//
//  SelectionCollectionViewCell.swift
//  page_tab_ios
//
//  Created by Dheeraj Kumar Sharma on 02/06/20.
//  Copyright © 2020 Dheeraj Kumar Sharma. All rights reserved.
//

import UIKit

class SelectionCollectionViewCell: UICollectionViewCell {
    
    override var isHighlighted: Bool{
        didSet{
            tabLabel.textColor = isHighlighted ? UIColor(red: 41/255, green: 41/255, blue: 41/255, alpha: 1) : UIColor(red: 211/255, green: 208/255, blue: 208/255, alpha: 1)
        }
    }
    
    override var isSelected: Bool{
        didSet{
            tabLabel.textColor = isSelected ? UIColor(red: 41/255, green: 41/255, blue: 41/255, alpha: 1) : UIColor(red: 211/255, green: 208/255, blue: 208/255, alpha: 1)
        }
    }
    
    let tabLabel:UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Tab 1"
        l.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        l.textColor = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1)
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tabLabel)
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            tabLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            tabLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
