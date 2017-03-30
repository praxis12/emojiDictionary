//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Josh Arntz on 3/27/17.
//  Copyright © 2017 Mr. Bear. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
        var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        descriptionLabel.text = emoji.definition
        
        
        
        
        
        
        
    }

    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
