//
//  DetailVC.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageDetailOUtlet: UIImageView!
    @IBOutlet weak var nameTxtDetailOutlet : UITextField!
    @IBOutlet weak var emailTxtOutlet : UITextField!
    
    private let manager = EmployeeManager()
    var selectedEmployee : Employee? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        viewWillSetUP()
        // Do any additional setup after loading the view.
    }
    
    func viewWillSetUP() {
        self.nameTxtDetailOutlet.text = selectedEmployee?.name
        self.emailTxtOutlet.text = selectedEmployee?.email
        self.imageDetailOUtlet.image = UIImage(data: (selectedEmployee?.profilePicture)!)
    }
    
    @IBAction func updateAction(_ sender : Any){
        
        let employee = Employee(name: self.nameTxtDetailOutlet.text, email: self.emailTxtOutlet.text, profilePicture: self.imageDetailOUtlet.image?.pngData(), id: selectedEmployee!.id)
        if(manager.update(employee: employee))
        {
            displayAlert(alertMessage: "Record Updated")
        }
        else
        {
            displayErrorAlert()
        }
    }
    @IBAction func deleteAction(_ sender: Any) {
        if(manager.delete(id: selectedEmployee!.id))
        {
            displayAlert(alertMessage: "Record Deleted")
        }
        else {
            displayErrorAlert()
        }
    }
    
    @IBAction func selectImage(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .savedPhotosAlbum
        picker.delegate = self
        present(picker, animated: true)
    }
    
   
    private func displayAlert(alertMessage:String)
    {
        let alert = UIAlertController(title: "ALert", message: alertMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(okAction)
        self.present(alert, animated: true)
    
    }
    private func displayErrorAlert()
    {
        let errorAlert = UIAlertController(title: "Alert", message: "Something went wrong, please try again later", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        errorAlert.addAction(okAction)
        self.present(errorAlert, animated: true)
        print("Hello")
    }
}
