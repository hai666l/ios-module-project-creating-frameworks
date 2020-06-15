//
//  ViewController.swift
//  LoadingUITest
//
//  Created by conner on 6/9/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var colorSelector: UISegmentedControl!
    let colors: [UIColor] = [.systemRed, .systemGreen, .systemBlue]
    
    // MARK: - IBActions
    
    @IBAction func startAnimation(_ sender: Any) {
        let loadingVC = LoadingViewController()
        loadingVC.color = colors[colorSelector.selectedSegmentIndex]
        present(loadingVC, animated: true)
    }
}

