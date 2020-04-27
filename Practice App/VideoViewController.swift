//
//  VideoViewController.swift
//  Practice App
//
//  Created by Eura Choi on 4/22/20.
//  Copyright © 2020 Eura Choi. All rights reserved.
//

import Foundation
import UIKit
import YoutubePlayer_in_WKWebView

class VideoViewController: UIViewController {
    weak var playerView: WKYTPlayerView!
    
    override func loadView() {
        super.loadView()
        
        let playerView = WKYTPlayerView(frame: .zero)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(playerView)
        NSLayoutConstraint.activate([
            playerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            playerView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            playerView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor),
            playerView.heightAnchor.constraint(equalToConstant: 300),
            playerView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
        ])
        self.playerView = playerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playerVars: Dictionary =
            ["fs": "1",
             "end": "10",
             "playsinline": "0",
             "showinfo":"0"
        ]
        playerView.load(withVideoId: "gB4g8HhuXFk", playerVars: playerVars)
    }
    
}
