//
//  ViewController.swift
//  Medium Clone
//
//  Created by Akhil Waghmare on 2/17/17.
//  Copyright © 2017 AW Labs. All rights reserved.
//

import UIKit
import LBTAComponents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupNavigationBar()
        
        view.backgroundColor = UIColor(r: 249, g: 249, b: 249)
    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        // Add Medium logo
        let titleImageView = UIImageView(image: UIImage(named: "medium_logo"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        // Add search button
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 28, height: 28)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchButton)
    }
}

