//
//  FrontViewController.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/3/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit


class FrontViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var imageURL: URL!
    
       @IBOutlet var tableView: UITableView!
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array1.count
        
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "frontCell", for: indexPath) as! FrontTableCell
      
        let imageURLString = Array1[indexPath.row]
        imageURL=URL(string:imageURLString)!

    
        
       cell.marsView.loadRequest(URLRequest(url: imageURL))
    
   
        
        return cell
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
               tableView.reloadData()
        super.viewDidLoad()

        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
