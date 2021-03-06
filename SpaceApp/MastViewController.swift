//
//  MastViewController.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/4/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit

class MastViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var imageURL: URL!
    
    
    @IBOutlet var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array2.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mastCell", for: indexPath) as! MastTableCell
        
        let imageURLString = Array2[indexPath.row]
        imageURL=URL(string:imageURLString)!
        
        
        
        cell.marsView.loadRequest(URLRequest(url: imageURL))
        
        
        
        return cell
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    
    
}

