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
    
     // Simpson Arrayi oluşturmak.
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        
        //Simpson Objects
        let homer = Simpson(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "eric")!)
        let barth = Simpson(simpsonName: "Barth", simpsonJob: "Student", simpsonImage: UIImage(named: "barth")!)
        let bebe = Simpson(simpsonName: "Bebe", simpsonJob: "Unknown", simpsonImage: UIImage(named: "bebe")!)
        let lisa = Simpson(simpsonName: "Lisa", simpsonJob: "Student", simpsonImage: UIImage(named: "lisa")!)
         
        // arraye yerleştirmek
        
        mySimpsons.append(homer)
        mySimpsons.append(barth)
        mySimpsons.append(lisa)
        mySimpsons.append(bebe)
        
      
        
    }
    
    //numberof section kaç row olacağını zorunlu olarak tanımlamamız gerekiyor. return değeri gösterir
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // mySimpsons arrayinin countuna eşitledik.
        return mySimpsons.count
    }
    
    // nasıl bir sıra olacağı cellforrow ile
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        // her bir rowda ilgili index gösterilecek
        cell.textLabel?.text = mySimpsons[indexPath.row].name // mySimpsons içindeki objelerin isimlerini text labele eşitlemek
        return cell
    }
    
    // Seçilen simpsonu aktarmak + Segue ile eşitlemek
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    // toDetailsVC seguesine tıklandıysa
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"  {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }


}

