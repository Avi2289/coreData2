//
//  DetailsVCExtension.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import Foundation
import UIKit

extension DetailVC : UIImagePickerControllerDelegate , UINavigationControllerDelegate
{
    func  imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let img = info[.originalImage] as? UIImage
        self.imageDetailOUtlet.image = img
        
        dismiss(animated: true, completion: nil)
    }
}
