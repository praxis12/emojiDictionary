//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Josh Arntz on 3/27/17.
//  Copyright © 2017 Mr. Bear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        let emoji2 = Emoji()
        let emoji3 = Emoji()
        let emoji4 = Emoji()
        let emoji5 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is really cool"
    
        emoji2.stringEmoji = "😡"
        emoji2.birthYear = 2001
        emoji2.category = "Smiley"
        emoji2.definition = "This guy is really mad"
        
        emoji3.stringEmoji = "😈"
        emoji3.birthYear = 2001
        emoji3.category = "Smiley"
        emoji3.definition = "This guy is really mischievous"
        
        emoji4.stringEmoji = "💩"
        emoji4.birthYear = 2008
        emoji4.category = "icon"
        emoji4.definition = "This guy is really shitty"
        
        emoji5.stringEmoji = "👨‍❤️‍👨"
        emoji5.birthYear = 2015
        emoji5.category = "Emotion"
        emoji5.definition = "I <3 Reidkun"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5,]
    }
    
    
}

