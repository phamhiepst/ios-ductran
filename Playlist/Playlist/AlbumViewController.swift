//
//  AlbumViewController.swift
//  Playlist
//
//  Created by Hiep Pham on 4/24/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    // Model: an album
    var album: Album?
   
    // MARK: - Properties
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var likeLabel: UILabel!
    
    
    func updateUI() {
        
        let albumName = "\((album?.title)!)"
        backgroundImageView.image = UIImage(named: albumName)
        albumCoverImageView.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoinedByString(", ")
        descriptionTextView.text = "\((album?.description)!) \n\nSome songs in the album:\n\(songList)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Album"
        updateUI()
    }
    
    // MARK: - Action
    @IBAction func like(sender: UITapGestureRecognizer) {
        
        if (likeLabel.text == "Like"){
            likeLabel.text = "Liked"
            likeLabel.textColor = UIColor.yellowColor()
        } else {
            likeLabel.text = "Like"
            likeLabel.textColor = UIColor.whiteColor()
        }
    }
    
}
