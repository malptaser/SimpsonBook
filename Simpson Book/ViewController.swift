//
//  ViewController.swift
//  Simpson Book
//
//  Created by BB-MP on 15.02.2022.
//

import UIKit

// UITableViewDelegate ve UITableViewDataSource miraslarını aldırıyoruz.


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        
        //Simpson Objects
        let homer = Simpson(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "eric")!)
         
    }
    
    //numberof section kaç row olacağını zorunlu olarak tanımlamamız gerekiyor. return değeri gösterir
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // nasıl bir sıra olacağı cellforrow ile
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer Simpson"
        return cell
    }


}

