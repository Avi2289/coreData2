//
//  EmployeeListVC.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import UIKit

class EmployeeListVC: UIViewController {

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    private let manager = EmployeeManager()
    var employees : [Employee]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  tableViewOutlet.delegate = self
     // tableViewOutlet.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Employee  List"
        employees = manager.fetchEmployee()
        
        if (employees != nil && employees?.count != 0)
        {
            self.tableViewOutlet.reloadData()
            debugPrint("Hello")
        }
        else{
            print("errorr")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == SegueIdentifier.navigateToEmployeeDetailView)
        {
            let detailView = segue.destination as? DetailVC
            guard detailView != nil else { return }
            detailView?.selectedEmployee = self.employees![self.tableViewOutlet.indexPathForSelectedRow!.row]
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    // Get the new view controller using segue.destination.
//    // Pass the selected object to the new view controller.
//       if(segue.identifier == SegueIdentifier.navigateToEmployeeDetailView)
//       {
//           let detailsView = segue.destination as? DetailVC
//           guard detailsView != nil else { return }
//           detailsView?.selectedEmployee = self.employees![self.tableViewOutlet.indexPathForSelectedRow!.row]
//       }
//    }

   

}
