//
//  EmployeeListVCExtension.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import Foundation
import UIKit

extension EmployeeListVC : UITableViewDelegate , UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return  self.employees!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell") as! EmployeeListCell
        let employee = self.employees![indexPath.row]
        
        cell.nameLabelOutlet.text = employee.name
        cell.imageCellOutlet.image = UIImage(data: employee.profilePicture!)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
