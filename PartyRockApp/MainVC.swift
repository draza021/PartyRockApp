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
        
        let p1 = PartyRock(imageURL: imageURLTest, videoURL: URLTest, videoTitle: "Where the Sun goes")
        
        partyRocks.append(p1)
        
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: <#T##IndexPath#>) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
        return partyRocks.count
    }


}

