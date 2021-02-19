//
//  ViewController.swift
//  SimpleYoutubePlayer
//
//  Created by Lawrence Dizon on 2/19/21.
//

import youtube_ios_player_helper
import UIKit

class ViewController: UIViewController {

    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        playerView.load(withVideoId: "70gKWkz5nXs")
    }


}

