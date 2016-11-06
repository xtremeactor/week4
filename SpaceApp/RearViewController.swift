//
//  RearViewController.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/4/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit



class RearViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var imageURL: URL!
    weak var rearDelegate:RearViewDelegate?

    @IBOutlet var tableView: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array3.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rearCell", for: indexPath) as! RearTableCell
        
        let imageURLString = Array3[indexPath.row]
        imageURL=URL(string:imageURLString)
        
        cell.marsView.loadRequest(URLRequest(url: imageURL))
        
        
        
        return cell
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidLoad()
//     //   tableView.reloadData()
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        //tableView.reloadData()        
//        self.rearDelegate?.tellParentVC()
        NotificationCenter.default.addObserver(self, selector: #selector(RearViewController.reloadDataFromVC), name: NSNotification.Name(rawValue: "ReloadDataFromVC"), object: nil)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reloadDataFromVC(){
        tableView.reloadData()
    }
    
    
    
}
