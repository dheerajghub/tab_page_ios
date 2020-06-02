//
//  PageTabViewController.swift
//  page_tab_ios
//
//  Created by Dheeraj Kumar Sharma on 02/06/20.
//  Copyright © 2020 Dheeraj Kumar Sharma. All rights reserved.
//

import UIKit

class PageTabViewController: UIViewController {

    let selectionView:SelectionView = {
        let v = SelectionView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(selectionView)
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            selectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            selectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            selectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            selectionView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}
