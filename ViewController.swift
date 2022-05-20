//
//  ViewController.swift
//  What Taylor Swift Song Are You?
//
//  Created by Janice on 09/05/22.
//

import UIKit

class ViewController: UIViewController {
    let songs = ["Lover", "All Too Well", "Untouchable"]
    let songsBU = ["Holy Ground", "Red", "I Forgot That You Existed", "I Bet You Think About Me", "Sad Beautiful Tragic", "Closure", "I Almost Do"]
    let songsIAR = ["This Love", "Everything Has Changed", "Starlight", "Enchanted", "Wildest Dreams", "Fearless", "Sparks Fly"]
    let songsLB = ["You Belong With Me", "Begin Again", "Hey Stephen", "Today Was A Fairytale", "Superstar", "Invisible String", "August"]
    
    
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var relationshipStatus: UIButton!
    @IBOutlet weak var monPopupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setPopupButton()
        relationshipStatusPopup()
    }
    @IBAction func calculateSong(_ sender: Any) {
        if relationship == "Lovebombing"{
            songName.text = songsLB[Int.random (in: 0..<7)]
        } else if relationship == "In A Relationship" {songName.text = songsIAR[Int.random (in: 0..<7)]}
        else if relationship == "Break-up" {songName.text = songsBU[Int.random (in: 0..<7)]}
    }
    var relationship:String = ""
    //MARK: function
    func setPopupButton() {
        let optionClosure = {(action : UIAction)
        in
        print(action.title)}
        monPopupButton.menu = UIMenu(children : [
            UIAction(title : "Female", state : .on, handler : optionClosure),
            UIAction(title : "Male", handler : optionClosure),
            UIAction(title : "Others", handler : optionClosure)])
        
        monPopupButton.showsMenuAsPrimaryAction = true
        monPopupButton.changesSelectionAsPrimaryAction = true
        
    }
    //MARK: function
    func relationshipStatusPopup() {
        let optionClosure = {(action : UIAction)
        in
            self.relationship = action.title
        print(action.title)}
        relationshipStatus.menu = UIMenu(children : [
            UIAction(title : "Lovebombing", state : .on, handler : optionClosure),
            UIAction(title : "In A Relationship", handler : optionClosure),
            UIAction(title : "Break-up", handler : optionClosure)])
        
        relationshipStatus.showsMenuAsPrimaryAction = true
        relationshipStatus.changesSelectionAsPrimaryAction = true
        
    }
}
    
    

