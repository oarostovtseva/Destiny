//
//  ViewController.swift
//  Destiny
//
//  Created by Olena Rostovtseva on 15.04.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!

    let storyTeller = StoryTeller()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateStoryUI(story: storyTeller.getCurrentStory())
    }
    
    func updateStoryUI(story : Story){
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyTeller.choiceMade(choiceNumber: sender.tag)
        updateStoryUI(story: storyTeller.getCurrentStory())
    }
}
