//
//  ResultViewController.swift
//  NetworkSessionSample
//
//  Created by Saeid.mhd@gmail on 5/16/17.
//  Copyright © 2017 Saeid mohammadi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var UserContainer : [UserInfoEntity] = []
    
    @IBOutlet weak var TableView: UITableView!
    
    func reloadcoreDataChanges(){
        
        UserContainer.removeAll()
        
        do{
            UserContainer += try appDelegate.persistentContainer.viewContext.fetch(UserInfoEntity.fetchRequest()) as [UserInfoEntity]
            
            DispatchQueue.main.async {
                self.TableView.reloadData()
            }
            
            
            
        }catch {
            
            print(error.localizedDescription)
        }
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self
        
        reloadcoreDataChanges()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ResultViewController: UITableViewDelegate,UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserContainer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = UserContainer[indexPath.row].firstName
        return  cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
