//
//  CreateEmployeeVC.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import UIKit

class CreateEmployeeVC: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    
    @IBOutlet weak var ImageOutlet: UIImageView!
    @IBOutlet weak var nameTxtFieldOutlet: UITextField!
    @IBOutlet weak var emailTxtOutlet: UITextField!
    
    private let manager: EmployeeManager = EmployeeManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])
        // Do any additional setup after loading the view.
    }
//    @IBAction func createButtonTapped(_ sender : Any)
//    {
//
//        let employee = Employee(name: nameTxtFieldOutlet.text, email: emailTxtOutlet.text, profilePicture: ImageOutlet.image?.pngData(), id: UUID())
//        manager.createEmployee(employee: employee)
//        self.performSegue(withIdentifier: SegueIdentifier.navigateToEmployeeDetailView, sender: nil)
//
//    }

    @IBAction func createBtnAction(_ sender: Any)
    {
        let employee = Employee(name: nameTxtFieldOutlet.text, email: emailTxtOutlet.text, profilePicture: ImageOutlet.image?.pngData(), id: UUID())
        manager.createEmployee(employee: employee)
        self.performSegue(withIdentifier: SegueIdentifier.navigateToEmployeeList, sender: nil)
    }
    
//    @IBAction func selectImageED(_ sender: Any) {
//        let picker = UIImagePickerController()
//        picker.sourceType = .savedPhotosAlbum
//        picker.delegate = self
//        present(picker, animated: true)
//    }
    @IBAction func selecteImage(_sender:Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .savedPhotosAlbum
        picker.delegate = self
        present(picker, animated: true)
    }

    // MARK: Image picker delegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let img = info[.originalImage] as? UIImage
        self.ImageOutlet.image = img

        dismiss(animated: true, completion: nil)
    }


}
