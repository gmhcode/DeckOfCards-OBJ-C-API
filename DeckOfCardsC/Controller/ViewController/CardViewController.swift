//
//  CardViewController.swift
//  DeckOfCardsC
//
//  Created by Greg Hughes on 12/18/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func drawButtonTapped(_ sender: Any) {
        
        CardController.drawCard { (card) in
           
            CardController.fetchCardImage(with: card, completion: { (image) in
                DispatchQueue.main.async {
                    
                    self.cardImageView.image = image
                }
            })
        }
    }
}
