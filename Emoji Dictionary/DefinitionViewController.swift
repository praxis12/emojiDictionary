//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Josh Arntz on 3/27/17.
//  Copyright © 2017 Mr. Bear. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
        var emoji = "No Emoji"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            descriptionLabel.text = "This guy is really cool"
            
        }
        if emoji == "😡" {
            descriptionLabel.text = "This guy is really mad"
            
        }
        if emoji == "😈" {
            descriptionLabel.text = "This guy is very mischievous"
            
        }
        if emoji == "💩" {
            descriptionLabel.text = "This guy is really shitty"
            
        }
        
        
        
        
        
    }

    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
