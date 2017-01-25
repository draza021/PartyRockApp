//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Drago on 1/16/17.
//  Copyright © 2017 Novotek. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var partyRocks = [PartyRock]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URLTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let imageURLTest = "http://oi66.tinypic.com/2cfqfib.jpg"
        let imageURLTest1 = "http://oi64.tinypic.com/jjsl80.jpg"
        let imageURLTest2 = "http://oi68.tinypic.com/jjtmwj.jpg"
        let imageURLTest3 = "http://oi67.tinypic.com/2cfqfq9.jpg"
        let imageURLTest4 = "http://oi41.tinypic.com/2nimosw.jpg"
        
        let p1 = PartyRock(imageURL: imageURLTest, videoURL: URLTest, videoTitle: "Where the Sun goes")
        let p2 = PartyRock(imageURL: imageURLTest1, videoURL: URLTest, videoTitle: "Where the Sun goes")
        let p3 = PartyRock(imageURL: imageURLTest2, videoURL: URLTest, videoTitle: "Where the Sun goes")
        let p4 = PartyRock(imageURL: imageURLTest3, videoURL: URLTest, videoTitle: "Where the Sun goes")
        let p5 = PartyRock(imageURL: imageURLTest4, videoURL: URLTest, videoTitle: "Where the Sun goes")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }


}

