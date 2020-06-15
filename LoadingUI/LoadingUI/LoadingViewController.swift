//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by conner on 6/9/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    // MARK: - Properties
    private var loadingView: IndeterminateLoadingView?
    
    public var color: UIColor = .red {
        didSet {
            loadingView?.color = color
        }
    }
    
    // MARK: - View Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        loadingView = IndeterminateLoadingView(frame: .zero)
        guard let loadingView = loadingView else { return }
        loadingView.color = color
        
        // Constrain LoadingView
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingView)
        NSLayoutConstraint.activate([
            loadingView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
    
    // Start and stop animating
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingView?.startAnimating()
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        loadingView?.stopAnimating()
    }
}
